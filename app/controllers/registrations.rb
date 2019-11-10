class Registrations < ApplicationController
# class Registrations <   Devise::RegistrationsController
    def create
        @user = User.create(user_params)
        render json: @user
    end
    
    def destroy
        
    end
    
    def update
        
    end

    private
        def user_params
            params.permit(:name, :email, :password, :password_confirmation)
        end
end