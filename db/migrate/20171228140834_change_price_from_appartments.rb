class ChangePriceFromAppartments < ActiveRecord::Migration[5.1]
  def change
    remove_column :appartments, :price
    add_column :appartments, :price, :string
  end
end
