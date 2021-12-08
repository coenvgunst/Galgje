class Guess < ApplicationRecord
  belongs_to :game

  validates :letter, length: { minimum: 1, maximum: 1 }
  validates :letter, presence: true, uniqueness: { scope: :game_id }
end
