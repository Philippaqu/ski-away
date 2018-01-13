class Confirmation < ApplicationRecord
  belongs_to :booking

 # before_create do
  #  @conversation = Conversation.find(params[:conversation_id])
  #  if @conversation.nil?
  #    return Conversation.create
  #  end
  #end

end
