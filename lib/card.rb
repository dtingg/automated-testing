class Card
  attr_reader :value, :suit
  
  VALUES = (1..13).to_a
  SUITS = [:hearts, :spades, :clubs, :diamonds]
  
  def initialize(value, suit)    
    if VALUES.include?(value)
      @value = value
    else
      raise ArgumentError.new("That is not a valid value.")
    end
    
    if SUITS.include?(suit)
      @suit = suit
    else
      raise ArgumentError.new("That is not a valid suit.")
    end
  end
  
  def convert_special_cards(card_number)
    special_cards = { 1 => "Ace", 11 => "Jack", 12 => "Queen", 13 => "King" }
    
    if special_cards.has_key?(card_number)
      return special_cards[card_number]
    else
      return card_number
    end
  end
  
  def to_s
    converted_value = convert_special_cards(value)
    return "#{converted_value} of #{suit}"
  end
end
