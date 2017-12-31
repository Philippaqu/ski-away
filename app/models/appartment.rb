class Appartment < ApplicationRecord
  belongs_to :user
  has_attachment :photo
  has_attachments :pictures
  has_many :reviews
end
