class User < ActiveRecord::Base

  serialize :fb_graph_cache, JSON

  def self.create_with_omniauth(auth)
    # raise auth.inspect

    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["extra"]["name"]
      user.access_token = auth["credentials"]["token"]
      user.fb_graph_cache = auth
    end
  end
end
