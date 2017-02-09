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

def total(cards)
  total = 0
  cards.each do |card|
    if (2..10).cover?(card[1])
      total += card[1]
    elsif ['J', 'Q', 'K'].include?(card[1])
      total += 10
    else
      total += 11
    end
  end
  
  numbers_of_aces = cards.count { |card| card[1] == 'A' }
  numbers_of_aces.times do
    total -= 10 if total > 21
  end
  
  total
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

def busted?(hand)
  total(hand) > 21
end

def detect_result(player_hand, dealer_hand)
  player_total = total(player)
  dealer_total = total(dealer)
  
  if player_total > 21
    :player_busted
  elsif dealer_total > 21
    :dealer_busted
  elsif player_total > dealer_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def display_result(player_hand, dealer_hand)
  result = detect_result(player_hand, dealer_hand)
  
  case result
  when :player_busted
    prompt 'You busted! Dealer wins.'
  when :dealer_busted
    prompt 'Dealer busted! You win.'
  when :player
    prompt 'You win!'
  when :dealer
    prompt 'Dealer wins!'
  when :tie
    prompt "It's a tie!"
  end
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
  
  prompt '------------------------------------------------------------------'
  prompt "The dealer has: #{dealer_hand[0]} and an unknown card"

  
  loop do #Player turn
    prompt "You have : #{player_hand}"
    ans = ''
    loop do
      puts 'Do you want to (h)it or (s)tay?'
      ans = gets.chomp.downcase
      break if ['h', 's'].include?(ans)
      puts "That is not a valid response. You should enter 'h' or 's'"
    end

    if ans == 'h'
      player_hand << deck.pop
      busted?(player_hand) ? break : next
    end
    break
  end

  prompt "Your cards are : #{player_hand}, for a total of: #{total(player_hand)}."
  if busted?(player_hand)
    prompt 'You busted! Dealer won.'
    play_again? ? next : break
  else
    prompt "You stayed at #{total(player_hand)} points."
  end
 
  prompt "Dealer's turn..." 
  loop do #dealer turn
    break if total(dealer_hand) >= 17
    prompt 'The dealer hits...'
    dealer_hand << deck.pop
    prompt "The dealer's cards are now: #{dealer_hand}"
  end
  
  prompt "The dealer has cards: #{dealer_hand}, for a total of: #{total(dealer_hand)}"
  if busted?(dealer_hand)
    prompt 'The dealer busted! You won.'
    play_again? ? next: break
  else
    prompt "The dealer stays at #{total(dealer_hand)}"
  end
    
  
  
  # display hands.
  
  
  # player hits until he stays.
      # Ask player if he wants to hit or to stay.
      # If he elects to hit:
          #draw a card
          #calculate total
          #if total is greater than 21:
              #bust - display result. 
              #bypass all steps until the point where the user is asked whether he wants to play again
          #elsif total <= 21:
              #Ask all over again whether the player wants to hit or stay and proceed as before.
      # If he elects to stay:
          #move on

  
  # dealer hits until he stays
  
  # compare scores
  
  # display result
  break unless play_again?
end