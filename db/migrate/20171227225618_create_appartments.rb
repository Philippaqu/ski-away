class CreateAppartments < ActiveRecord::Migration[5.1]
  def change
    create_table :appartments do |t|
      t.string :address
      t.string :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
