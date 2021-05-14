class Review < ApplicationRecord

    belongs_to :rental
    belongs_to :user

    validates_inclusion_of :rating, :in => 1..5
    validates :body, presence: true, length: { maximum: 500 }
    validates :title, presence: true


    scope :by_user, ->(user_id) { where(user: user_id) }
    scope :by_date, -> {where("created_at >=?", Time.zone.today.beginning_of_day)}

end
