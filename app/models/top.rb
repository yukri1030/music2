class Top < ApplicationRecord
  belongs_to :user
  has_many :messages
  mount_uploader :image, ImageUploader
end
