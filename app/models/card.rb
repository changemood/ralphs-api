class Card < ApplicationRecord
  belongs_to :user, required: true
  # Card doesn't have to belong to board.
  belongs_to :board, required: false
end
