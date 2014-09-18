class ApplicationController < ActionController::Base
  before_action :set_locale
  before_filter :set_user_time_zone

  def set_user_time_zone
    Time.zone = Preference.find_by(user_id: current_user.id).time_zone if user_signed_in?
  end

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  # Overwriting the sign_out redirect path method
  before_filter :configure_permitted_parameters, if: :devise_controller?

  # If authorisation from can can is failed then redirect to root
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_url, :alert => exception.message
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(
      :firstname, :lastname, :username, :country,
      :dob, :email, :password, :password_confirmation,
      :remember_me, :user_agreement, preferences_attributes: [:time_zone]
      )
    end
    devise_parameter_sanitizer.for(:sign_in) do |u|
      u.permit(
      :login, :email,
      :password, :remember_me
      )
    end
    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(
      :username, :email, :password,
      :password_confirmation, :current_password
      )
    end
  end
end
