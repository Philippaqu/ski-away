class Appartment < ApplicationRecord
  belongs_to :user
  has_attachment :photo
  has_attachments :pictures
  has_many :reviews
  has_many :bookings

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

end
