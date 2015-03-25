class TimelineController < ApplicationController
  def lookup    
    
    # get user id from user name 
    @id = current_user.user('FAIL').id
    
    # Get profile description
    @desc = current_user.user('FAIL').description
    
    # Get profile timeline
    @tweets = current_user.timeline('FAIL')
   
    # Followers
    @followers = current_user.followers("FAIL")
    
    # user_timeline('FAIL', options = {}) ⇒ Array<Twitter::Tweet>
    
    # read user's timeline by id
    # @timeline = current_user.user_timeline @id

    # read user's timeline of yours
    # your_timeline = current_user.user_timeline
  end
end