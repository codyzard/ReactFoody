class CartsController < ApplicationController
  before_action :find_user, only:[:show, :index]
  before_action :set_cart, only: [:show, :update, :destroy]
  before_action :history_cart, only: [:index]
  def index
    @carts = @historyCart
    render json: @carts
  end

  def show
    render json: @cart.items
  end

  def create
    @cart = Cart.new(cart_params)

    if @cart.save
      render json: @cart, status: :created, location: @cart
    else
      render json: @cart.errors, status: :unprocessable_entity
    end
  end

  def update
    if @cart.update(cart_params)
      render json: @cart
    else
      render json: @cart.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @cart.destroy
  end

  private
    def set_cart
      @cart = Cart.find(params[:user_id])
    end

    def cart_params
      # params.fetch(:cart, {})
    end

    def history_cart
      @historyCart = Cart.where(user_id: params[:user_id])
    end
    
    def find_user
      @user = User.find(params[:user_id])
    end
end
