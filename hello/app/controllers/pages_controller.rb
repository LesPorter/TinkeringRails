class PagesController < ApplicationController
  def home
    @Home = Home.new
  end
end
