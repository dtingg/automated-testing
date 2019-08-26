require_relative 'card'

class Deck
  attr_reader :card_list
  
  def initialize
    @card_list = []
    make_deck
  end
  
  def make_deck
    Card::VALUES.each do |value|
      Card::SUITS.each do |suit|
        card_list.push(Card.new(value, suit))
      end
    end
  end
  
  def draw
    return card_list.pop
  end
  
  def count
    return card_list.length
  end
  
  def shuffle
    card_list.shuffle!
  end
end
