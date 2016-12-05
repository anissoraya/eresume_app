class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  layout :determine_layout

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

  protected
  def configure_permitted_parameters
    added_attrs = [:avatar, :username, :subdomain, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

end
