class AddingTypeToAppartment < ActiveRecord::Migration[5.1]
  def change
    add_column :appartments, :type, :string
    add_column :appartments, :header, :string
  end
end
