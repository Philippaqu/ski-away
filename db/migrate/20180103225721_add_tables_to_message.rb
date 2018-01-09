class AddTablesToMessage < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :text, :string
    add_reference :messages, :conversation, foreign_key: true, index: true
    add_reference :messages, :user, foreign_key: true, index: true
  end
end
