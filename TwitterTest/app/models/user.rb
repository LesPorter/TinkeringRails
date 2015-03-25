class User < ActiveRecord::Base
  def getclient
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = Rails.application.config.twitter_key
      config.consumer_secret     = Rails.application.config.twitter_secret
      config.access_token        = oauth_token
      config.access_token_secret = oauth_secret
    end
  end
  
  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_secret = auth.credentials.secret
      user.save!
    end
  end

  def tweet(tweet)
    getclient.update(tweet)
  end
  
  def status(tweetID)
    getclient.status(tweetID)
  end
  
  def timeline(username)
    getclient.user_timeline(username)
  end
  
  def user(username)
    getclient.user(username)
  end
  
  def retweeters(tweetID)
    getclient.retweeters_of(tweetID)
  end
  
  def retweet(tweetID)
    getclient.retweet(tweetID)
  end
  
  def followers(username)
    getclient.followers(username)
  end
  
  def search(keyword)
    getclient.search(keyword, :result_type => "recent").take(3).collect do |tweet|
      "#{tweet.user.screen_name}: #{tweet.text}"
    end
    
  end
  
end
