class Review < ApplicationRecord
    belongs_to :rental
    belongs_to :user

    validates_inclusion_of :rating, :in => 1..5
end
