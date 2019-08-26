require_relative 'card'

class Deck
  attr_reader :card_list
  
  def initialize
    @card_list = []
    make_deck
  end
  
  def make_deck
    VALUES.each do |value|
      SUITS.each do |suit|
        card_list.push(Card.new(value, suit))
      end
    end
  end
  
  def draw
    # returns a card
  end
  
  def shuffle
    card_list.shuffle!
  end
end
