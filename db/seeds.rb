# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# user = User.new({email: "localhost+0@ralph.com", password: "password"}).save!
# board = user.boards.create({name: "Board"})
# board.card.create({title: "Card", body: "Body"})
# User.new({email: "localhost+#{no}@ralph.com", password: "password"}).save!
# Store.create({
#   user_id: user.id
#   store_id: store.id
# }, without_protection: true)

5.times do |no|
  User.new({email: "localhost+#{no}@ralph.com", password: "password"}).save!
  User.first.boards.new({name: "Board #{no}"}).save!
  Board.first.cards.new({title: "Card #{no}", body: "Body #{no}", user_id: User.first.id}).save!  
end