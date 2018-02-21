class Card < ApplicationRecord
  belongs_to :user
  has_many :sr_events, dependent: :destroy
end
