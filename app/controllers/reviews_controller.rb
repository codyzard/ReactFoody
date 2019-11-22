class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :update]
  before_action :find_user, only: [:create]
  def index
    @reviews = Review.all

    render json: @reviews
  end

  def show
    render json: @review
  end

  def create
    @review = @user.reviews.create(review_params)
    if @review.save
      render json: @review, status: :created, location: @review
      @product = Product.find(@review.product_id)
      avr_rate = @product.average_rate
      @product.update_attribute(:rate, avr_rate)
    else
      render json: @review.errors, status: :unprocessable_entity
    end

  end

  def update
    if @review.update(review_params)
      @product = Product.find(@review.product_id)
      avr_rate = @product.average_rate
      @product.update_attribute(:rate, avr_rate)
      render json: @review
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @product = Product.find(@review.product_id)
    @review.destroy 
    avr_rate = @product.average_rate
    @product.update_attribute(:rate, avr_rate)
  end

  private
    def set_review
      @review = Review.find(params[:id])
    end

    def find_user
      @user = User.find(params[:user_id])
    end
    def review_params
      params.permit(:user_id,:product_id,:rate,:comment)
    end
end
