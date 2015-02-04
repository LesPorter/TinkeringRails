class PagesController < ApplicationController
  def home
    # @Home is an instance variable. Global variables are presented as @@Home
    @Home = Home.new
  end
end
