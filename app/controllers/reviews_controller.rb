class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :update]
  before_action :find_user, only: [:create, :destroy]
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
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  def update
    if @review.update(review_params)
      render json: @review
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @review = @user.reviews.find_by(id: params[:id])
    @review.destroy 
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
