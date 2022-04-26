class OffersController < ApplicationController
  def index
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def new
  end

  def create
  end
end
