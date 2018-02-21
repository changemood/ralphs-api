class SrEvent < ApplicationRecord
  belongs_to :sr_master
  belongs_to :user
  belongs_to :card
end
