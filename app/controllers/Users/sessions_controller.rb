# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  def new
    super
  end

  # POST /resource/sign_in
  def create
    byebug
    # user = User.where(email: params[:email]).first
    
    # if(user.valid_password?(params[:password]))
    #   render json: user.as_json(only: [:id, :email]),status: :created
    # else
    #    head(:unauthorized)
    # end
    # if @user.valid_password? user_params[:password]
    #   sign_in @user, store: false
    #   render json: {message: "Signed in successfully",
    #     user: @user, status: 200
    #   return
    # end
    # invalid_login_attempt

  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
