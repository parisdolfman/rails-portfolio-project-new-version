class Review < ApplicationRecord
    belongs_to :rental
    belongs_to :user

    validates_inclusion_of :rating, :in => 1..5
    validates :body, presence: true, length: { maximum: 500 }
    validates :title, presence: true

    def less_than_3_stars
        rating.to_i < 3
    end 
end
