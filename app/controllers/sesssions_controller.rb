class Users::SessionsController < ApplicationController
   def create
    user = User.where(email: params[:email]).first
    
    if user.valid_password?(params[:password])
        render json: user
    else
        head(:unauthorized)
    end
   end

   def destroy
       
   end

end
  