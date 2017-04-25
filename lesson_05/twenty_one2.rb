SUITS = ['H', 'D', 'C', 'S']
VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def deal(deck)
  deck.pop
end

def value(cards)
  value = 0
  cards.each do |card|
    if (2..10).cover?(card[1])
      value += card[1]
    elsif ['J', 'Q', 'K'].include?(card[1])
      value += 10
    else
      value += 11
    end
  end
  
  numbers_of_aces = cards.count { |card| card[1] == 'A' }
  numbers_of_aces.times do
    value -= 10 if value > 21
  end
  
  value
end

def play_again?
  ans = ''
  loop do
    puts 'Do you want to play again? (y/n)'
    ans = gets.chomp.downcase
    break if ['y', 'n', 'yes', 'no'].include?(ans)
    puts 'That is not a valid response.'
  end
  ['y', 'yes'].include?(ans)
end

prompt 'Welcome to Twenty One.'

loop do
  deck = initialize_deck
  dealer_hand = []
  player_hand = []
  2.times do
    dealer_hand << deck.pop
    player_hand << deck.pop
  end
  
  # display hands.
  
  
  # player hits until he stays.
      # Ask player if he wants to hit or to stay.
      # If he elects to hit:
          #draw a card
          #calculate value
          #if value is greater than 21:
              #bust - display result. 
              #bypass all steps until the point where the user is asked whether he wants to play again
          #elsif value <= 21:
              #Ask all over again whether the player wants to hit or stay and proceed as before.
      # If he elects to stay:
          #move on

  
  # dealer hits until he stays
  
  # compare scores
  
  # display result
end
  





















