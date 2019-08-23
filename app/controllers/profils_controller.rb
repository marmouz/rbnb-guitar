class ProfilsController < ApplicationController
  skip_before_action :authenticate_user!
  def show
    @user = User.find(params[:id])
    @guitar = Guitar.new
    @reviews = @user.my_guitar_reviews
  end
end
