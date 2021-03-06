class ConfirmationsController < ApplicationController

  def index
    @confirmations = Confirmation.all
  end

  def show
    @confirmation = Confirmation.find(params[:id])
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @confirmation = Confirmation.create(confirmation_params)
    @confirmation.booking_id = @booking.id
    @confirmation.conversation_id = @conversation.id
    @confirmation.text = @booking.text
    @confirmation.save
  end

  private

  def confirmation_params
    params.require(:confirmation).permit(:text)
  end
end
