class Top < ApplicationRecord
  belongs_to :user
  has_many :messages
  has_many :messages_image
end
