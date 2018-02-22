class SendSrRemindJob < ApplicationJob
  queue_as :default

  def perform(card)
    SrRemindMailer.remind(card).deliver_now
  end
end
