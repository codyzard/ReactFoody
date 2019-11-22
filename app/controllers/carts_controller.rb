class CartsController < ApplicationController
  before_action :set_cart, only: [:getCart,:addProduct]
  before_action :history_cart, only: [:index]
  before_action :find_cart, only:[:destroy]
  def sendcart
    user = find_user(params[:cart_id])
    user.carts.find_by(status:3).update_attributes(status: 0)
    cart = []
    render json:cart
  end
  def show
    @carts = Cart.where.not(status: 3)
    params = []
    @carts.map{|i| params.push(:id => i.id,:username => User.find_by(id:i.user_id).name,:status=>i.status,:item => i.items)}
    render json: params
  end
  def decline
    cart = Cart.find_by(id:params[:cart_id])
    if cart.status == 0
      cart.update_attributes(status: 2)
    end
    @carts = Cart.where.not(status: 3)
    para = []
    @carts.map{|i| para.push(pushparam(i))}
    render json: para
  end
  def confirm
    cart = Cart.find_by(id:params[:cart_id])
    if cart.status == 0
      cart.items.map{|i| minus(i)}
      cart.update_attributes(status: 1)
    end
    @carts = Cart.where.not(status: 3)
    para = []
    @carts.map{|i| para.push(pushparam(i))}
    render json: para
  end
  def create
  end
  def destroy
    render json: @cart_admin
    @cart_admin.destroy
  end
  def update
    user = find_user(params[:id])
    cart = user.carts.find_by(status:3).items
    item = cart.find_by(id:params[:Item_id])
    if item != nil
      item.update_attributes(quantity:params[:quantity])
    end
    para =[]
    user.carts.find_by(status:3).items.map{|i| para.push(pushparam(i))}
    render json: para
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
    @items.map{|i| para.push(pushparam(i))}
    render json: para
  end
  def addProduct
    item = @cart.items.find_by(product_id:params[:product_id])
    if item == nil
        i = Item.create(cart_id:@cart.id,product_id:params[:product_id],quantity:params[:quantity])
    else
        q = item.quantity
        item.update_attributes(quantity:q +params[:quantity])
    end
  end
  def getCart
    @items = @cart.items
    params = []
    if @items != nil
      @items.map{|i| params.push(pushparam(i))}
    end
    render json: params
  end
  private
    def set_cart
      user = find_user(params[:id])
      if user.carts.find_by(status:3) != nil
        @cart = user.carts.find_by(status:3)
        return @cart
      else 
        @cart = Cart.create(user_id: user.id,status: 3)
        return @cart
      end
    end

    def find_cart
      @cart_admin = Cart.find(params[:id])
    end
    
    def cart_params
      # params.fetch(:cart, {})
    end

    def history_cart
      @historyCart = Cart.where(user_id: params[:user_id])
    end
    def minus (item)
      p = Product.find_by(id:item.product_id)
      p.update_attributes(quantity: p.quantity - item.quantity)
    end
    def pushparam (i)
      p = Product.find_by(id: i.product_id)
      return {:id=>i.id,:quantity=>i.quantity,:name=>p.name,:image=>p.image,:price=>p.price}
    end
    def find_user (authentication_token)
      @user = User.find_by(authentication_token: authentication_token)
    end

end
