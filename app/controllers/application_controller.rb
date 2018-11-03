class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_controller, :set_action
  before_action :configure_permitted_parameters, if: :devise_controller?

  def set_controller
    @controller = params[:controller]
  end

  def set_action
    @action = action_name
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
  end
  
end
