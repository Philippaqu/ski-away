class Conversation < ApplicationRecord
  #belongs_to :user, class_name: "User", foreign_key: "user_id"
  #belongs_to :appartment, class_name: "User", foreign_key: "appartment_id"
  #validates_uniqueness_of :user_id, scope: :appartment_id

  #scope :between, -> (user_id, appartment_id) { where("conversations.user_id = ? AND conversations.appartment_id = ? ) OR (conversations.appartment_id = ? AND conversations.user_id = ?", user_id, appartment_id, appartment_id, user_id)}
end
