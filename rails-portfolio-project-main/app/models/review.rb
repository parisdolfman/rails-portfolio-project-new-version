class Review < ApplicationRecord
    belongs_to :rental
    belongs_to :user

    validates_inclusion_of :rating, :in => 1..5
    validates :body, presence: true, length: { maximum: 500 }
    validates :title, presence: true


    def self.by_user(user_id)
        where(user: user_id)
    end

    scope :rental_review, ->(r) { where("rental_id = ?", r) }
end
