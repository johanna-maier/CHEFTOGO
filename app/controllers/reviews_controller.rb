class ReviewsController < ApplicationController
  before_action :find_offer, only: %i[new create]

  # Not needed since review form is rendered in offer show page
  # view file deleted too
  # def new
  #   @review = Review.new
  # end

  def create
    @review = Review.new(review_params)
    @review.offer = @offer
    @review.user = current_user

    if @review.save
      redirect_to offer_path(@offer)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to offer_path(@review.offer)
  end

  private

  def find_offer
    @offer = Offer.find(params[:offer_id])
  end

  def review_params
    params.require(:review).permit(:title, :content, :rating)
  end
end
