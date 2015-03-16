class TimelineController < ApplicationController
  def lookup    
    
    # get user id from user name 
    @id = current_user.user('FAIL').id
    
    # Get profile description
    @desc = current_user.user('FAIL').description
    
    # @tweets = current_user.user_timeline('FAIL', {count: 3})
    
    # user_timeline('FAIL', options = {}) ⇒ Array<Twitter::Tweet>
    
    # read user's timeline by id
    # @timeline = current_user.user_timeline @id

    # read user's timeline of yours
    # your_timeline = current_user.user_timeline
  end
end