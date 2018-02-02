class AddDetailsToAppartments < ActiveRecord::Migration[5.1]
  def change
    add_column :appartments, :wlan, :boolean, default: false
    add_column :appartments, :bed, :integer
    add_column :appartments, :bathtube, :boolean, default: false

  end
end
