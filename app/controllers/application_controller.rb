class ApplicationController < ActionController::Base
	 before_action :authenticate_user!
 
   before_action :configure_permitted_parameters, if: :devise_controller?
 
 def after_sign_in_path_for(resource)
    # role = Role.find_by(role_name: params[:user][:roles])
    # current_user.roles << role if role !=nil
    
    if current_user.roles.first.role_name == 'Customer'
        return all_properties_path    
    elsif current_user.roles.first.role_name== 'Property Owner'
        return properties_path
    end
 end


 protected
  
  def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up,keys:[:name, :email, :account_number,:country,:encrypted_password,:role_ids])
    
  end
end


