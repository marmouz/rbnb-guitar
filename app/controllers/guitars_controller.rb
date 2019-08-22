class GuitarsController < ApplicationController
  before_action :set_guitar, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:genre].present?
      @guitars = Guitar.where("genre ILIKE ?", "%#{params[:genre]}%")
    else
      @guitars = Guitar.all
    end
  end

  def show
    @user = @guitar.user
    @booking = Booking.new
    @bookings = @guitar.bookings
    @bookings_date = @bookings.map do |booking|
      var = { from: booking.start_date, to: booking.end_date }
      p var
    end
  end

  def new
    @guitar = Guitar.new
  end

  def create
    @guitar = Guitar.new(guitar_params)
    @guitar.user = current_user
    @guitar.save
    if @guitar.save
      redirect_to @guitars
    else
      render :show
    end
  end

  def edit
  end

  def update
    @guitar.update(guitar_params)
    # redirect_to @guitar
  end

  def destroy
    @guitar.destroy
    # redirect_to @guitar
  end

  private

  def set_guitar
    @guitar = Guitar.find(params[:id])
  end

  def guitar_params
    params.require(:guitar).permit(:model, :level, :brand, :type, :price_per_day)
  end
end
