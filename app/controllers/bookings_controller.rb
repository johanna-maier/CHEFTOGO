class BookingsController < ApplicationController
  before_action :get_offer
  skip_before_action :get_offer, only: :index

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.offer = @offer
    if @booking.save
      redirect_to root_path # TODO: change this link
    else
      render :new
    end
  end

  private

  def get_offer
    @offer = Offer.find(params[:offer_id])
  end

  def booking_params
    params.require(:booking).permit(:comment, :address, :status, :booking_date, :start_time, :end_time)
  end

  # t.text "comment"
  #   t.string "address"
  #   t.string "status"
  #   t.date "booking_date"
  #   t.time "start_time"
  #   t.time "end_time"
end
