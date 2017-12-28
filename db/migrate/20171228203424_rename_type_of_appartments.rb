class RenameTypeOfAppartments < ActiveRecord::Migration[5.1]
  def change
    remove_column :appartments, :type
    add_column :appartments, :appartment_type, :string
  end
end
