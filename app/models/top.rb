class Top < ApplicationRecord
  belongs_to :user
  has_many :messages
  has_many :imageurl
  mount_uploader :image, ImageUploader
end
