class CartsController < ApplicationController
  before_action :set_cart, only: [:getCart,:addProduct]
  before_action :history_cart, only: [:index]
  before_action :find_cart, only:[:destroy]
  def index 
  end
  def show
    @carts = Cart.all
    params = []
    @carts.map{|i| params.push(:user_id=> i.user_id,:cart =>Item.where(cart_id: i.id),:status => i.status)}
    render json: params
  end
  def confirm
    cart = Cart.find_by(id:params[:cart_id])
    if cart.status == 3
      cart.items.map{|i| decline(i)}
      cart.update_attributes(status: 0)
    end
  end
  def create
  end
  def update
    # if @cart.update(cart_params)
    #   render json: @cart
    # else
    #   render json: @cart.errors, status: :unprocessable_entity
    # end
  end
  def destroy
    render json: @cart_admin
    @cart_admin.destroy
  end
  def update
    user = find_user(params[:id])
    cart = Cart.find_by(status:3,user_id:user.id)
    item = cart.items.find_by(id:params[:Item_id])
    if item != nil
      item.update_attributes(quantity:params[:quantity])
    end
    render json: Cart.find_by(status:3,user_id:user.id).items
  end
  def delete
    user =find_user (params[:id])
    @cart =Cart.find_by(user_id: user.id,status:3)
    @items = @cart.items
    item = @items.find_by(id:params[:Item_id])
    if item != nil
      item.destroy
    end
    para = []
    @items.map{|i| para.push({:id=>i.id,:quantity=>i.quantity,:name=>Product.find_by(id: i.product_id).name,:image=>Product.find_by(id: i.product_id).image,:price=>Product.find_by(id: i.product_id).price})}
    render json: para
  end
  def addProduct
    item = Item.find_by(cart_id:@cart.id,product_id:params[:product_id])
    if item == nil
        i = Item.create(cart_id:@cart.id,product_id:params[:product_id],quantity:params[:quantity])
        @cart.update_attributes(status:3)
    else
        q = item.quantity
        item.update_attributes(quantity:q +params[:quantity])
        @cart.update_attributes(status:3)
    end
  end
  def getCart
    @items = @cart.items
    params = []
    @items.map{|i| params.push({:id=>i.id,:quantity=>i.quantity,:name=>Product.find_by(id: i.product_id).name,:image=>Product.find_by(id: i.product_id).image,:price=>Product.find_by(id: i.product_id).price})}
    render json: params
  end
  private
    def set_cart
      user = find_user(params[:id])
      @cart = Cart.find_by(user_id: user.id)
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
    def decline (item)
      p = Product.find_by(id:item.product_id)
      p.update_attributes(quantity: p.quantity - item.quantity)
    end

    def find_user (authentication_token)
      @user = User.find_by(authentication_token: authentication_token)
    end

end
