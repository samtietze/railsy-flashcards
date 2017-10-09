class Game < ApplicationRecord
  belongs_to :deck
  belongs_to :user
  has_many :guesses

end
