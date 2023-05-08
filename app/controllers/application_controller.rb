class ApplicationController < ActionController::Base

    # permitting the extra attribute in devise signup form
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
    def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :password, :password_confirmation, :type])
    end

end
