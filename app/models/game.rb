class Game < ApplicationRecord
  validates :word, presence: true

  has_many :guesses
end
