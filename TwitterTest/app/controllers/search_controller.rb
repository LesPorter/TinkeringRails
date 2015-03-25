class SearchController < ApplicationController
  def keywords
    
    
    
#     @current_user.search("to:justinbieber marry me", result_type: "recent").take(3).each do |tweet|
#       @results = tweet.text
#     end
    
#     current_user::Search.new
#     search = Twitter::Search.new.containing("obama")
    @results = @current_user.search('obama') 
    
  end
end