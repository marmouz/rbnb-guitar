class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.user = current_user
    @review.booking = @booking
    @review.save
    # if @review.save
    #   redirect_to
    # else
    #   render :new
    # end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
