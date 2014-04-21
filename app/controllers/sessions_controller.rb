class SessionsController < ApplicationController
  def create
    auth = request.env["omniauth.auth"]
    user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)

    if user.access_token != auth['credentials']['token']
      user.access_token = auth['credentials']['token']
      user.save
    end

    session[:user_id] = user.id
    # redirect_to root_url, :notice => "Signed in!"
    redirect_to gathering_url
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end

  def failure
    redirect_to root_url
  end
end
