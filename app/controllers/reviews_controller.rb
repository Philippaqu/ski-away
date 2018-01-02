class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def new
    find
    @review = Review.new
    @review.user_id = @user.id
    @review.appartment_id = @appartment.id
  end

  def create
    find
    @review = Review.create(review_params)
    @review.user_id = @user.id
    @review.appartment_id = @appartment.id
    @review.save
    redirect_to appartment_path(@appartment)
  end

  private

  def review_params
    params.require(:review).permit(:testimonial, :rating)
  end

  def find
    @user = current_user
    @appartment = Appartment.find(params[:appartment_id])

  end

end
