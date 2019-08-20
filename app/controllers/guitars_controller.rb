class GuitarsController < ApplicationController
  before_action :set_guitar, only: [:show, :edit, :update, :destroy]

  def index
    @guitars = Guitar.all
    console
  end

  def show
  end

  def new
    @guitar = Guitar.new
  end

  def create
    @guitar = Guitar.new(guitar_params)
    @guitar.user = current_user
    # if @guitar.save
    #   redirect_to @guitar
    # else
    #   render :new
    # end
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
