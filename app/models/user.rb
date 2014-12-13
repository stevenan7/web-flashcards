class User < ActiveRecord::Base
  has_many :user_decks
  has_many :decks, through: :rounds
  has_many :cards, through: :decks
end
