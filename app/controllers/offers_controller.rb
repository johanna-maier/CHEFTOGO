class OffersController < ApplicationController

  before_action :set_offer, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: %i[index show]
  def index
    @offers = Offer.all
  end

  def show
    # @offer = Offer.find(params[:id])
  end

  def new
    @offer = Offer.new
  end

  def edit
   # @offer = Offer.find(params[:id])
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

  def update
    if @offer.update(offer_params)
      redirect_to @offer, notice: 'Offer was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    # @offer = Offer.find(params[:id])
    @offer.destroy
    redirect_to @offers, notice: 'Offer was successfully destroyed.'
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :description, :price, :number_of_people, :category, :photo)
  end

  def set_offer
    @offer = Offer.find(params[:id])
  end
end
