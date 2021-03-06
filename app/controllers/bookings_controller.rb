class BookingsController < ApplicationController
  before_action :set_offer
  skip_before_action :set_offer, only: %i[index destroy]
  # before_action :set_offer, only[:new , :create]

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
      # redirect_to root_path # TODO: change this link
      redirect_to dashboard_path, notice: 'Your booking was successful!'
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_path
  end

  private

  def set_offer
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
