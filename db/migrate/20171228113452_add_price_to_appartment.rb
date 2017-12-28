class AddPriceToAppartment < ActiveRecord::Migration[5.1]
  def change
    add_column :appartments, :price, :integer
  end
end
