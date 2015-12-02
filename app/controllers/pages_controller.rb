class PagesController < ApplicationController
  def home
    @client = User.new
  end
  
  def faq
  end
  
  def amortization
  end
  
  def location
  end
  
  def about_us
  end
  
  def contact
    @client = User.new
  end
end
