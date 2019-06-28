class User < ApplicationRecord
  enum role: [:user, :creator,:admin]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
