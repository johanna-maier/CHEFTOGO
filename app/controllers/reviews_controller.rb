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

    # Is the request of page asking for specifc format - e.g. HTML if JS is disabled?
    respond_to do |format|
      if @review.save
        # if it asks for an HTML, it will look for html.erb with same name
        # we give back regular response specifically telling to redirect
        format.html { redirect_to offer_path(@offer, anchor: "review-#{@review.id}") }
        format.json # normal Rails flow will look for a file called "create.json"
      else
        format.html { render "offers/show" }
        format.json # normal Rails flow will look for a file called "create.json"
      end
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
