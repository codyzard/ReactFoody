class UsersController < ApplicationController
    
    def update
        byebug
        @user = User.find_by(email: params[:email])
        if @user
            @user.update_attributes(user_params)
            render json: @user, only: [:id,:name,:email,:authentication_token], status: 201
        else
            render status: 401
        end    
    end

    private
    def user_params
        params.permit(:name,:password,:password_confirmation)
    end
end