class Rental < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews
    
    validates :street_add, presence: true
    validates :city, presence: true
    validates :state, presence: true
    validates :owner, presence: true

end
