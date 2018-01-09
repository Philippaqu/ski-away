class CreateConfirmations < ActiveRecord::Migration[5.1]
  def change
    create_table :confirmations do |t|
      t.references :booking, foreign_key: true
      t.references :conversation, foreign_key: true
      t.string :text


      t.timestamps
    end
  end
end
