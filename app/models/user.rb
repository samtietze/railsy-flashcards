class User < ApplicationRecord
  has_many :games
  has_many :guesses, through: :games

  has_secure_password
end
