class UsersController < ApplicationController
    
    def update
        @user = User.find_by(email: params[:email])
        if @user
            @user.update_attributes(user_params)
            render json: @user, only: [:id,:name,:email,:authentication_token], status: 201
        else
            render status: 401
        end    
    end
    def show
        @user = User.find_by(authentication_token: params[:authentication_token])
        render json: @user, except: [:created_at,:updated_at,:authentication_token]
    end
    private
    def user_params
        params.permit(:name,:password,:password_confirmation)
    end
end