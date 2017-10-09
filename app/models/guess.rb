class Guess < ApplicationRecord
  belongs_to :card
  belongs_to :game
  # belongs_to :guesser
  def correct?(user_answer)
    user_answer == self.card.answer
  end

end
