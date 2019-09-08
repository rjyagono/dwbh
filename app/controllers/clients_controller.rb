class ClientsController < ApplicationController
  
  def index
  end

  def show
  end

  def new
  end

  def create
    password = Devise.friendly_token.first(8)
  
   # user = User.create!(:email => email, :password => generated_password)
   # RegistrationMailer.welcome(user, generated_password).deliver
    
    @client = User.new(client_params.merge(:password => password, :password_confirmation => password))
    
    respond_to do |format|
       if verify_recaptcha(model: @client) && @client.save
         format.html { redirect_to @client, notice: 'Thing was successfully created.' }
         #format.json { render action: 'show', status: :created, location: @client }
         format.js { render json: @client, content_type: 'text/json',  status: :ok }
       else
         format.html { render action: 'new' }
         #format.json { render json: @client.errors, status: :unprocessable_entity }
         format.js { render json: @client.errors.full_messages, status: :unprocessable_entity }
       end
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
