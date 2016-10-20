class ReviewsController < ApplicationController
  def index
    @activity = Activity.find(params[:activity_id])
    @reviews = Review.all
  end
  def new
    @activity = Activity.find(params[:activity_id])
    @review = Review.new
  end
  def create
    @activity = Activity.find(params[:activity_id])
    @review = @activity.reviews.create(review_params)
    redirect_to activity_path(@activity)
  end
  def edit
    @review = Review.find(params[:id])
  end
  def update

    @review = Review.find(params[:id])
    @review.update(review_params)
    redirect_to activity_path(@review.activity)
  end
  def destroy
    @activity = Activity.find(params[:activity_id])
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to activity_path(@activity)
  end

private
  def review_params
    params.require(:review).permit(:body, :rating, :quote, :activity_id)
  end

end
