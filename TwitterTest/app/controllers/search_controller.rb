class SearchController < ApplicationController
  def keywords
    
    # Search results
    @meerkat = current_user.search("mrk.tv/")
    @periscope = current_user.search("periscope.tv/")
    
   
  end
end