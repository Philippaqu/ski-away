require 'date'

class Booking < ApplicationRecord
  belongs_to :appartment
  belongs_to :user

  def length_of_stay
    booking_start = self.start_date.to_date
    booking_end = self.end_date.to_date
    (booking_end - booking_start).to_i
  end

  def total_price
    length_of_stay * self.appartment.price
  end
end

