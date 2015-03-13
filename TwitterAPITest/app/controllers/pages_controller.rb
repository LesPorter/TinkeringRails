class PagesController < ApplicationController
  require 'open-uri'
  require 'json'
  
  def home
    # This one worked. Keep digging here.
    # data = open("https://api.twitter.com/1.1/statuses/show.json?id=XXX&oauth_consumer_key=XXX&oauth_nonce=XXXX&oauth_signature=XXXX&oauth_signature_method=XXX&oauth_timestamp=1426120765&oauth_token=XXX&oauth_version=1.0").read
    @results = data["results"]
  end
end
