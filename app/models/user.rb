class User < ApplicationRecord
  enum role: [:user, :creator,:admin]

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :authentications, dependent: :destroy

  has_one :company

 def self.create_with_auth_and_hash(authentication, auth_hash)
   user = self.create!(
     email: auth_hash["info"]["email"],
     password: SecureRandom.hex(10)
   )
   user.authentications << authentication
   return user
 end

 # grab google to access google for user data
 def google_token
   x = self.authentications.find_by(provider: 'google_oauth2')
   return x.token unless x.nil?
 end
end
