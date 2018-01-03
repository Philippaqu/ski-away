class AddMessageToBooking < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :text_message, :string
  end
end
