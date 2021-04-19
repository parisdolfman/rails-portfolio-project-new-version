class Rental < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews


    def full_add
        @rentals.each do |rental|
            rental.join(" ")
        end 
    end 

end
