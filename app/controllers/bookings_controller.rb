class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.guitar = Guitar.find(params[:guitar_id])
    @booking.save!
    if @booking.save
      redirect_to booking_path(@booking.id)
    else
      render_to root_path
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    # redirect_to booking_path(@booking.guitar)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
