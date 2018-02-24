# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# This is only for test and development
5.times do |no|
  User.new({email: "localhost+#{no}@ralph.com", password: "password"}).save!
  User.first.boards.new({name: "Board #{no}"}).save!
  Board.first.cards.new({title: "Card #{no}", body: "Body #{no}", user_id: User.first.id}).save!
  Card.first.sr_events.new(interval: 4, review_count: 1, next_review_at: Time.now + 4.hours, user_id: User.first.id).save!
end
