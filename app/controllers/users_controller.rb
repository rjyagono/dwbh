class UsersController < ApplicationController

  before_filter :set_user, only: [:show, :edit, :update]
  before_filter :validate_authorization_for_user, only: [:edit, :update]
  
  def index
     @users = User.all
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
    if @user.update_attributes(client_params)
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
  end
  
  private

    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    def validate_authorization_for_user
       redirect_to root_path unless @user == current_user
    end
    
  def client_params
    params.require(:user).permit(:name, :email, :phone)
  end
end
