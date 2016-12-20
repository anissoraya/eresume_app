class RegistrationsController < Devise::RegistrationsController
before_action :configure_permitted_parameters, if: :devise_controller?

  
  protected
  def configure_account_update_params
     devise_parameter_sanitizer.permit(:account_update, keys: [:avatar, :username, :email, :anis, :password, :password_confirmation])
   end
  def update_resource(resource, params)
    resource.update_without_password(params)
  end


end
