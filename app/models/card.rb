class Card < ApplicationRecord
  belongs_to :user, required: true
  # Card doesn't have to belong to board.(board_id can be nil)
  belongs_to :board, required: false
  has_many :sr_events, dependent: :destroy
end
