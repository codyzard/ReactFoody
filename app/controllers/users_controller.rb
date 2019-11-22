class UsersController < ApplicationController
    
    def index
        @users = User.all.order("created_at DESC")
        render json: @users, only: [:id,:name,:email,:phone,:authentication_token]
    end

    def update
        @user = User.find_by(email: params[:email])
        if @user
            @user.update_attributes(user_params)
            render json: @user, only: [:id,:name,:email,:phone,:authentication_token], status: 202
        else
            render status: 401
        end    
    end

    def destroy
        @user = User.find_by(authentication_token: params[:authentication_token])
        if @user 
            @user.destroy
            render status: 204
        else
            render status: 404
        end    
    end

    def show
        # byebug
        @user = User.find_by(authentication_token: params[:authentication_token])
        render json: @user, except: [:created_at,:updated_at]
    end
    private

        def user_params
            params.permit(:name,:phone,:avatar,:password)
        end
end