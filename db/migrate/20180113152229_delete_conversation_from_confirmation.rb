class DeleteConversationFromConfirmation < ActiveRecord::Migration[5.1]
  def change
    remove_reference :confirmations, :conversation
  end
end
