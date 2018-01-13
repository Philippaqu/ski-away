require 'date'

class Booking < ApplicationRecord
  belongs_to :appartment
  belongs_to :user
  after_create :send_confirmation

  def length_of_stay
    booking_start = self.start_date.to_date
    booking_end = self.end_date.to_date
    (booking_end - booking_start).to_i
  end

  def total_price
    length_of_stay * self.appartment.price
  end

  def send_confirmation
    @confirmation = Confirmation.create(booking_id: self.id, text: self.text_message)
    @confirmation.save
  end


end

