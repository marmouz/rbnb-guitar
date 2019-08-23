class ProfilsController < ApplicationController
  skip_before_action :authenticate_user!
  def show
    @user = User.find(params[:id])
    @guitar = Guitar.new
    @reviews = Review.where.not(user: @user)
  end
end
