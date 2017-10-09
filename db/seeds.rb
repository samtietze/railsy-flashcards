# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Deck.create(title: "Test Deck")
Deck.create(title: "Second Deck")
Deck.create(title: "This is a Third Deck!")

Card.create(deck_id: 1, question: "Is this a test?", answer: "Yes")
Card.create(deck_id: 1, question: "Is Avner typing?", answer: "Nope")
Card.create(deck_id: 1, question: "Does Kadin have a fox on his head", answer: "No")
Card.create(deck_id: 1, question: "Is the skeleton wearing a sombrero?", answer: "Yes")
Card.create(deck_id: 1, question: "Does Gilad like beer?", answer: "Yes")

Card.create(deck_id: 2, question: "Are the White Sox' socks white?", answer: "No")
Card.create(deck_id: 2, question: "Are the White Sox better than the Cubs?", answer: "Ask Kara")
Card.create(deck_id: 2, question: "Is Wrigley Field overrated?", answer: "No")
Card.create(deck_id: 2, question: "Are the Twins awful or what?", answer: "Totally")

Card.create(deck_id: 3, question: "Does anyone want to go climbing?", answer: "No")
Card.create(deck_id: 3, question: "Can we play kickball?", answer: "Not according to the parks department")

5.times do
  person = User.new(username: Faker::Pokemon.name)
  person.email = Faker::Internet.safe_email(person.username)
  person.password = "password"

  person.save
end
