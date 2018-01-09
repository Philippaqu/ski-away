class Conversation < ApplicationRecord
 # belongs_to :user
 # belongs_to :appartment

 # scope :between, -> (user_id, appartment_id) do
 #  where(“(conversations.user_id = ? AND conversations.appartment_id = ? ) OR (conversations.appartment_id = ? AND conversations.user_id = ? )”, user_id, appartment_id, appartment_id, user_id)
#end
end
