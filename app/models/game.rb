class Game < ApplicationRecord
  belongs_to :deck
  belongs_to :player, class_name: "User", foreign_key: "user_id"
  has_many :guesses

end
