class OffersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  def index
    @offers = Offer.all
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @user = current_user
    @offer.user = @user
    if @offer.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :description, :price, :number_of_people, :category, :photo)
  end
end
