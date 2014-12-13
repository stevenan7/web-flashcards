require_relative '../config/environment.rb'

require 'csv'


@deck = Deck.create(name: 'Capitals')

CSV.foreach('db/capital_flashcards.csv', headers: true) do |line|
  Card.create(deck_id: @deck.id, question: line['State'], answer: line['Capital'], point_value: 1)
end

User.create(name: 'rajcat', password: 'rajcat', total_points: 0)
User.create(name: 'Adriana', password: 'rajcat2', total_points: 0)
User.create(name: 'rajdoglover', password: 'rajcat3', total_points: 0)
User.create(name: 'Lukekat', password: 'rajcat4', total_points: 0)
