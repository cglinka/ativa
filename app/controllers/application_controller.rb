class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
<<<<<<< HEAD

  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?
=======
  before_action :authenticate_user!
  before_filter :configure_permitted_parameters, if: :devise_controller?
>>>>>>> b31db2da5806bfd5bc54a866e2c63dc91cfb90c4

  protected

  def configure_permitted_parameters
<<<<<<< HEAD
    devise_parameter_sanitizer.for(:account_update) << :name
    devise_parameter_sanitizer.for(:account_update) << :profile_pic
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:sign_up) << :profile_pic
=======
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :profile_pic, :password, :password_confirmation, :current_password) }
>>>>>>> b31db2da5806bfd5bc54a866e2c63dc91cfb90c4
  end
end
