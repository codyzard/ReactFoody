class ItemsController < ApplicationController
    
    before_action :find_user, only: [:create,:destroy]
    before_action :find_product, only: [:create,:destroy]
    before_action :find_item, only: [:destroy]
    def create
        return if @user.nil?
        @item = Item.new(item_params)
        @cartCheckout = @user.carts.last
        if(@cartCheckout && @cartCheckout.status == 3)
            @item.cart_id = @cartCheckout.id            
            product_ids = checkDupfood(@cartCheckout.items) # check dupProduct
            check = product_ids.include?(@product.id)
            if(@product.quantity > 0 && check == false)
                @item.product_id = @product.id 
            else
                @item.product_id = nil  
            end
        else
            @item.cart_id = (@user.carts.create).id
            @item.product_id = params[:product_id] if (@product.quantity > 0)
        end
       
        if @item.product_id && @item.save
            render json: @item, status: :created, location: @item
        else
            render json: @item.errors, status: :unprocessable_entity
        end
    end

    def destroy
        render json: @items
		@item.destroy
	end

    private 

    def find_user
        # @user = current_user
        @user = User.find(params[:user_id])
    end
    
    def find_product
        @product = Product.find(params[:product_id])
    end
    
    def find_item
        @item = Item.find(params[:id])
    end

    def checkDupfood items
        arr = []
        items.each do |i|
            arr << i.product_id
        end
        return arr
    end
    
    def item_params
        params.permit(:cart_id,:product_id,:quantity)
    end 
    
    def user_params
        params.permit(:user_id)
    end
end
