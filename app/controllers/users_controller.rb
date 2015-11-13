class UsersController < ApplicationController
  respond_to :html, :js
  layout nil
  
  def index
  end

  def show
  end

  def new
  end

  def create
    @client = User.new(client_params)
    
    if @client.save
      @client.request = request
    end
  end

  def update
  end

  def destroy
  end
  
  private
  
  def client_params
    params.require(:client).permit(:name, :email, :phone)
  end
end
