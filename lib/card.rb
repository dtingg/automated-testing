class Card
  attr_reader :value, :suit
  
  def initialize(value, suit)
    valid_values = (1..13).to_a
    valid_suits = [:hearts, :spades, :clubs, :diamonds]
    
    if valid_values.include?(value)
      @value = value
    else
      raise ArgumentError.new("That is not a valid value.")
    end
    
    if valid_suits.include?(suit)
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
