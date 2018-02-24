class Board < ApplicationRecord
  belongs_to :user, required: true
  has_many :cards
end
