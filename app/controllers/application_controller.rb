class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  layout :determine_layout

  def after_sign_in_path_for(resource)
    dashboard_index_path
  end

  private
  def determine_layout
    if user_signed_in?
      "session"
    elsif admin_signed_in?
      "admin_session"
    else
      "application"
    end

  end
  def get_resume

    users = User.where(subdomain: request.subdomain)

    if users.count > 0
      @user = users.first
    #elsif request.subdomain != 'www'
      #redirect_to root_url(subdomain: 'www')
    end
  end

  protected
  def configure_permitted_parameters
    added_attrs = [:avatar, :username, :subdomain, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end


end
