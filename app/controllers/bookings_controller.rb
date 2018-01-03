require 'date'

class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    find
    @booking = Booking.create(booking_params)
    @booking.user_id = @user.id
    @booking.appartment_id = @appartment.id
    @booking.save
  end

  private
  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def find
    @user = current_user
    @appartment = appartment.find(params[:id])
  end

end
