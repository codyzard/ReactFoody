# module Api::V1 
  class ProductsController < ApplicationController
    before_action :set_product, only: [:show, :update, :destroy]
    before_action :find_reviews, only: [:show]
    def index
      @products = Product.all
      render json: @products
    end

    def show
      # respond_to do |format|
      #   format.json  { render :json =>{:product => @product, :reviews => @reviews}}
      # end
      render json: @product
    end

    def reviews
      @product= Product.find(params[:id])
      @reviews = @product.reviews
      render json: @reviews
    end
    def commentedUsers
      @product= Product.find(params[:id])
      @reviews = @product.reviews
      @users = []
      @reviews.each{ |i|
        @users << i.user
      }
      render json: @users

    end
    def create
      @product = Product.new(product_params)

      if @product.save
        render json: @product, status: :created, location: @product
      else
        render json: @product.errors, status: :unprocessable_entity
      end
    end

    def update
      if @product.update(product_params)
        render json: @product
      else
        render json: @product.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @product.destroy
    end

    private
      def set_product
        @product = Product.find(params[:id])
      end

      def find_reviews
        @reviews = Review.where(product_id: params[:id])
      end

      def product_params
        params.permit(:name,:image,:price,:classsify,:quantity,:description,:category_id)
      end
      
  end
# end