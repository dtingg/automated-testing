require_relative 'test_helper'

describe Card do
  describe "You can create a Card instance" do
    
    it "Can be created" do
      [:hearts, :spades, :clubs, :diamonds].each do |suit|
        (1..13).each do |value|
          card = Card.new(value, suit)
          expect(card).must_be_instance_of Card
        end
      end
    end
    
    it "Raises an ArgumentError for invalid parameters" do
      expect {Card.new(0, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :diamonds)}.must_raise ArgumentError
      expect {Card.new(10, :clovers)}.must_raise ArgumentError 
      expect {Card.new(14, :clovers)}.must_raise ArgumentError
    end
  end
  
  describe "Testing to_s" do
    
    it "to_s returns a readable String value logically for values 2-10" do
      card = Card.new(2, :diamonds)
      expect(card.to_s).must_equal "2 of diamonds"
    end
    
    it "to_s returns a readable String value for Ace, Jack, Queen, King" do
      card = Card.new(11, :hearts)
      expect(card.to_s).must_equal "Jack of hearts"
      
      card = Card.new(12, :clubs)
      expect(card.to_s).must_equal "Queen of clubs"
      
      card = Card.new(13, :spades)
      expect(card.to_s).must_equal "King of spades"
      
      ace = Card.new(1, :diamonds)
      expect(ace.to_s).must_equal "Ace of diamonds"      
    end
  end
  
  describe "Reader methods" do
    
    it "Can retrieve the value of a number card using a `.value`." do
      card = Card.new(5, :spades)
      expect(card.value).must_equal 5      
    end
    
    it "Can retrieve the value of a face card using a `.value`." do
      card = Card.new(13, :spades)
      expect(card.value).must_equal 13      
    end
    
    it "Can retrieve the value of a number card using a `.suit`." do
      card = Card.new(6, :hearts)
      expect(card.suit).must_equal :hearts
    end
    
    it "Can retrieve the value of a face card using a `.suit`." do
      card = Card.new(1, :clubs)
      expect(card.suit).must_equal :clubs
    end
  end
end
