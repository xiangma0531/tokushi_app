class ApplicationController < ActionController::Base
  before_action :basic_auth
  before_action :configure_permitted_parameters_admin, if: :devise_controller?
  before_action :configure_permitted_parameters_user, if: :devise_controller?

  private
  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end

  def configure_permitted_parameters_admin
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  def configure_permitted_parameters_user
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  def after_sign_in_path_for(resource)
    case resource
    when Admin
      admin_path
    when User
      user_path
    end
  end
end
