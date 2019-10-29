class ApplicationController < ActionController::API 
    include ActionController::MimeResponds
    acts_as_token_authentication_handler_for User
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:email,:password])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :password])
    end
    #skip token
end
