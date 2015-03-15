class TimelineController < ApplicationController
  def lookup
    # @profile = current_user.user("FAIL")
    # @tweet = current_user.status(27558893223)
    # @profile_timeline = current_user.user_timeline("FAIL")  # Doesn't work
    
    
    # get user id from user name 
    @id = current_user.user('FAIL').id
    
    # Get profile description
    @desc = current_user.user('FAIL').description
    
    #@tweets = current_user.user_timeline('FAIL', {count: 3})
    
    # user_timeline('FAIL', options = {}) ⇒ Array<Twitter::Tweet>
    
    # read user's timeline by id
    #@timeline = current_user.user_timeline @id

    # read user's timeline of yours
    # your_timeline = current_user.user_timeline
  end
end