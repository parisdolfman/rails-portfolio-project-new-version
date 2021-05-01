class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, :omniauth_providers => [:facebook]
  
  has_many :rentals
  has_many :rentals, through: :reviews

  validates :username, presence: true, uniqueness: true, length: { in: 2..20 }
  

  def self.from_omniauth(auth)
  name_split = auth.info.name.split(" ")
  user = User.where(email: auth.info.email).first
  user ||=  auth.info.email.blank? ? User.create!(provider: auth.provider, uid: auth.uid, username: "username", email: "test@test26.com", password: Devise.friendly_token[0, 20]) : nil 
    user
end
   
    def self.new_with_session(params, session)
      super.tap do |user|
        if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
          user.email = data["email"] if user.email.blank?
        end
      end
    end

  


end
