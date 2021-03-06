class BookingsController < ApplicationController

  def index
    @user = current_user
    @bookings = Booking.all
  end

  def new
    find
    @booking = Booking.new
  end

  def create
    find
    @booking = Booking.create(booking_params)
    @booking.user_id = @user.id
    @booking.appartment_id = @appartment.id
    @booking.save
    redirect_to appartments_path(@appartment)
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(params(:status))
  end

  private
  def booking_params
    params.require(:booking).permit(:text_message, :start_date, :end_date)
  end

  def find
    @user = current_user
    @appartment = Appartment.find(params[:appartment_id])
  end

end
