class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :rentals
  has_many :rentals, through: :reviews

  validates :username, presence: true, uniqueness: true, length: { in: 2..20 }
end
