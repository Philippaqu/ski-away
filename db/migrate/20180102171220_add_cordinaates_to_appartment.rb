class AddCordinaatesToAppartment < ActiveRecord::Migration[5.1]
  def change
    add_column :appartments, :latitude, :float
    add_column :appartments, :logitude, :float
  end
end
