require_relative 'test_helper'

describe Deck do
  
  describe "initialize method" do
    it "creates a deck" do
      deck = Deck.new
      
      expect(deck).must_be_kind_of Deck
    end
  end
  
  describe "make_deck method" do
    it "makes a full deck" do
      deck = Deck.new
      
      expect(deck.card_list.length).must_equal 52
    end
  end
  
  describe "draw method" do
    it "returns one card instance" do
      deck = Deck.new
      card = deck.draw
      
      values = (1..13).to_a
      suits =  [:hearts, :spades, :clubs, :diamonds]
      
      expect(card).must_be_kind_of Card
      expect(values.include? card.value).must_equal true
      expect(suits.include? card.suit).must_equal true
    end
  end
  
  describe "count method" do
    it "returns the correct number of cards in deck" do
      deck = Deck.new
      starting_count = deck.count
      deck.draw
      ending_count = deck.count
      
      expect(starting_count).must_equal 52
      expect(ending_count).must_equal 51
    end
  end
  
  describe "shuffle method" do
    it "shuffles the deck of cards" do
      deck = Deck.new
      original_deck_order = deck.card_list.dup
      
      deck.shuffle      
      shuffled_deck_order = deck.card_list
      
      expect(original_deck_order).wont_equal shuffled_deck_order  
    end
  end
end
