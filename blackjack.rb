#!/usr/bin/env ruby
# encoding: UTF-8

SUITS = ['♠', '♣', '♥', '♦']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

def build_deck
  @deck = []

  SUITS.each do |suit|
    VALUES.each do |value|
      @deck.push(value + suit)
    end
  end

  @deck.shuffle!

end

@deck=build_deck

next_card=@deck.pop

@player=[]
@dealer=[]

def player_deal
  @player << @deck.pop
  @player << @deck.pop


  @player.each do |card|
    puts"Player was dealt #{card}"
  end

  puts"Player has #{player_score}"
end

def player_score
  @player.inject(0) {|score, card| score.to_i + card.to_i }
end



def dealer_deal
  @dealer << @deck.pop
  @dealer << @deck.pop



  @dealer.each do |card|
    puts"Dealer was dealt #{card}"
  end
end

puts"Welcome to Blackjack!"
build_deck
player_deal
dealer_deal




