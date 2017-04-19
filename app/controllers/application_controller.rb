class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

protected

def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :nombre, :planta, :departamento, :funcion, :enfoque, :division) }
  devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password, :password_confirmation, :current_password, :nombre, :planta, :departamento, :funcion, :enfoque, :division) }
end

# def stored_location_for(resource)
#   nil
# end

# def after_sign_in_path_for(resource)
#   	videos_path
# end

# def after_sign_up_path_for(resource)
#     videos_path
# end

end
