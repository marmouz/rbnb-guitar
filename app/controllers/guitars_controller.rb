class GuitarsController < ApplicationController
  before_action :set_guitar, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:genre].present?
      @guitars = Guitar.where("genre ILIKE ?", "%#{params[:genre]}%")
      @title_inject = "de type #{params[:genre]}"
      raise
    elsif params[:city].present?
      sql_query = " \ users.city ILIKE :query \ "
      @guitars = Guitar.joins(:user).where(sql_query, query: "%#{params[:city]}%")
      @title_inject = "à #{params[:city].capitalize}"
    else
      @guitars = Guitar.all
    end
    # @guitars = @guitars.where.not(user: current_user) if user_signed_in?
  end

  def show
    @user = @guitar.user
    @booking = Booking.new
    @bookings = @guitar.bookings
    @bookings_date = @bookings.map do |booking|
      { from: booking.start_date, to: booking.end_date }
    end
  end

  def new
    @guitar = Guitar.new
  end

  def create
    @guitar = Guitar.new(guitar_params)
    @guitar.user = current_user
    @guitar.save
    if @guitar.save!
      redirect_to guitars_path
    else
      redirect_to profil_path(current_user)
    end
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
    params.require(:guitar).permit(:model, :level, :brand, :genre, :photo, :description, :price_per_day)
  end
end
