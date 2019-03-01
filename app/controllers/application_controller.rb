class ApplicationController < ActionController::Base
  before_action :authenticate_user!, expect: %i[user_session_path, new_user_session]
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  def user_sign_in?
    if user_loged_in?
      redirect_to :user_session_path
    end
  end
end
