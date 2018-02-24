class Card < ApplicationRecord
  belongs_to :user, required: true
  # Card doesn't have to belong to board.(board_id can be nil)
  belongs_to :board, required: false
  has_many :sr_events, dependent: :destroy

  # when card is created, add sr_event record
  after_create :add_sr_event

  # insert sr_event record
  # TODO: need to consider how we set next_review_at
  # for now we set interval for 4 hours
  # e.g. first interval is 4. from next time, it will be 8, 12, 16...
  # OR we can let user decide. or we never change interval, and user change when they want to.
  def add_sr_event(interval=4)
    sr_events = SrEvent.filtered_by_card(self.id)
    if sr_events.any?
      review_count = sr_events.last.review_count
    else
      review_count = 1
    end
    # for now, we set it interval * review_count from second time
    next_review_at = Time.now + interval.hours * review_count
    self.sr_events.create(interval: interval, review_count: review_count, next_review_at: next_review_at)
  end

end
