class CorrectLongitude < ActiveRecord::Migration[5.1]
  def change
    remove_column :appartments, :logitude, :float
    add_column :appartments, :longitude, :float
  end
end
