class OffersController < ApplicationController
  def index
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
    params.require(:offer).permit(:title, :description, :price, :number_of_people, :category)
  end
end
