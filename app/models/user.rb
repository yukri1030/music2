class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true, length: { maximum: 6 }
  validates :email, presence: true, length: { maximum: 30 }
  validates :password, presence: true, length: { maximum: 10 }

def email_required?
     false
end
 
def email_changed?
 false
end
end