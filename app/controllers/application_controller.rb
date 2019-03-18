class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, :keys => [:address_line1, :address_line2, :city, :state, :zipcode, :country, :neighborhoodname, :profile_image, :user_type, :first_name])

    devise_parameter_sanitizer.permit(:account_update, :keys => [:address_line1, :address_line2, :city, :state, :zipcode, :country, :neighborhoodname, :profile_image, :user_type, :first_name])
  end
end
