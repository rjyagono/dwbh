class PagesController < ApplicationController
  def home
    @client = User.new
  end
  
  def faq
  end
  
  def location
  end
  
  def contact
    @client = User.new
  end
end
