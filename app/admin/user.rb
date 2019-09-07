ActiveAdmin.register User do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
 
	index do
		excluded = ["admin","encrypted_password", "reset_password_token", "reset_password_sent_at", 
			        	"remember_created_at","sign_in_count","current_sign_in_at","last_sign_in_at",
			    	  	"current_sign_in_ip","last_sign_in_ip","provider","updated_at","uid","image","location","username"]
		  (User.column_names - excluded).each do |c|
		  column c.to_sym
		end
		actions
	end

  filter :name
  filter :phone
  filter :email
  filter :created_at
  filter :is_called

   form do |f|
    f.inputs "User Details" do
      f.input :name
      f.input :phone
      f.input :email
      f.input :is_called
    end
    f.actions
  end
end
