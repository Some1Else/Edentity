class PagesController < ApplicationController
  # caches_page :test
  
  # STEP 1
  def landing
    # raise "BOO".inspect  
  end

  # STEP 2
  def gathering
  end

  # STEP 3
  def print  
  end

  # STEP 4
  def cleaning
    session[:user_id] = nil
  end

  def testcached
  end
  
  def expire
    expire_page action: 'test'
    redirect_to action: 'test'
  end
end
