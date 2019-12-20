class CartsController < ApplicationController
  before_action :find_user, only:[:show, :index]
  before_action :set_cart, only: [:show, :confirm,:accept,:decline]
  before_action :history_cart, only: [:index]
  before_action :find_cart, only:[:destroy]
  def index
    if (@user.role == 1)
      @carts = Cart.all
    else
      @carts = @historyCart
    end
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
    render json: @cart_admin
    @cart_admin.destroy
  end

  def confirm
    @items = @cart.items
    update_quantity(@items)
  end
  
  def update_quantity (items)
    return nil if items == []
    checkOut = 0
    money = 0.0
    productArr = [] 
    items.each_with_index do |i,index|
      productArr[index] = Product.find_by(id: i.product_id)
      if(productArr[index].quantity >= i.quantity )
        productArr[index].quantity = productArr[index].quantity - i.quantity
      else
        checkOut = 3;
        break;
      end
    end
    if(checkOut == 0)
      productArr.each_with_index do |p,index|
        product = Product.find(p.id)
        product.update_attributes(quantity: p.quantity)
        money += p.price*p.quantity
      end
      cart = Cart.find(items[0].cart_id)
      cart.update_attributes(status: 0, checkout: money, buyTime: Time.zone.now.to_date)
      render json: cart
    else
      return nil
    end
  end

  def accept
    @cart.update_attributes(status: 1)
    render json:@cart
  end

  def decline
    @cart.update_attributes(status: 2, checkout: -@cart.checkout)
    undo_quantity (@cart.items)
    render json:@cart
  end

  def undo_quantity(items) #bo hang vao kho
    items.each_with_index do |i,index|
      product = Product.find(i.product_id)
      product.update_attributes(quantity: product.quantity + i.quantity)
    end
  end
  
  private
    def set_cart
      @cart = Cart.find(params[:user_id])
      if (@cart.status == 0) 
        return nil
      else 
        return @cart
      end
    end

    def find_cart
      @cart_admin = Cart.find(  params[:id])
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
