class TweetsController < ApplicationController
  def new
  end

  def create
    current_user.tweet(twitter_params[:message])
  end

  def twitter_params
    params.require(:tweet).permit(:message)
  end
  
  def profile
    # current_user.tweet("robot")   This worked.  It tweeted.
    # current_user.status("569953713093287936")  Didn't work.
  end
end