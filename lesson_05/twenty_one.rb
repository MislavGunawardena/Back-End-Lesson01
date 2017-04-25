require 'pry'
SUITS = ['H', 'D', 'C', 'S'].freeze
VALUES = %w(2 3 4 5 6 7 8 9 10 J Q K A).freeze
TOURNAMENT_WINNING_SCORE = 2
TARGET_VALUE = 31
DEALER_BASELINE = 27


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
  sum = 0
  values = cards.map { |card| card[1] }

  values.each do |value|
    if value == 'A'
      sum += 11
    elsif value.to_i.zero?
      sum += 10
    else
      sum += value.to_i
    end
  end

  numbers_of_aces = cards.count { |card| card[1] == 'A' }
  numbers_of_aces.times do
    sum -= 10 if sum > TARGET_VALUE
  end

  sum
end

def another_tournament?
  ans = ''
  loop do
    puts 'Do you want to play another tournament? (y/n)'
    ans = gets.chomp.downcase
    break if ['y', 'n', 'yes', 'no'].include?(ans)
    puts 'That is not a valid response.'
  end
  ['y', 'yes'].include?(ans)
end

def busted?(total)
  total > TARGET_VALUE
end

def detect_result(player_total, dealer_total)
  if player_total > TARGET_VALUE
    :player_busted
  elsif dealer_total > TARGET_VALUE
    :dealer_busted
  elsif player_total > dealer_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def display_winner(player_total, dealer_total)
  result = detect_result(player_total, dealer_total)
  
  puts ' =========================== '
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
  puts ' =========================== ' 
end

def display_result(player_hand, dealer_hand, player_total, dealer_total)
  result = detect_result(player_total, dealer_total)
  
  puts ' =========================== '
  prompt "Player has #{player_hand} for a total of: #{player_total}"
  prompt "Dealer has #{dealer_hand} for a total of: #{dealer_total}"
  display_winner(player_total, dealer_total)
end

def press_enter_to_continue
  prompt 'Press Enter to continue.'
  gets
end

def display_scores(scores)
  prompt '     Score Board'
  prompt "You    : #{scores[:player]}"
  prompt "Dealer : #{scores[:dealer]}"
  puts ' =========================== '
end

def tournament_over?(scores)
  scores.values.include?(TOURNAMENT_WINNING_SCORE)
end

def display_tournament_result(scores)
  puts ' =========================== '
  if scores[:player] == TOURNAMENT_WINNING_SCORE
    prompt "You won the tournament!"
  elsif scores[:dealer] == TOURNAMENT_WINNING_SCORE
    prompt "Dealer won the tournament" 
  end
  puts ' =========================== '

end

system 'clear'
prompt 'Welcome to Twenty One.'
press_enter_to_continue

loop do
  scores = {player: 0, dealer: 0}
  loop do # A single tournament
    system 'clear'
    deck = initialize_deck
    dealer_hand = []
    player_hand = []
    2.times do
      dealer_hand << deck.pop
      player_hand << deck.pop
    end
    dealer_total = total(dealer_hand)
    player_total = total(player_hand)
  
    puts '------------------------------------------------------------------'
    puts '------------------------------------------------------------------'
    prompt "The dealer has: #{dealer_hand[0]} and an unknown card"
    prompt "You have : #{player_hand}"
  
    loop do # Player turn
      player_turn = ''
      loop do
        puts 'Do you want to (h)it or (s)tay?'
        player_turn = gets.chomp.downcase
        break if ['h', 's'].include?(player_turn)
        puts "That is not a valid response. You should enter 'h' or 's'"
      end
  
      if player_turn == 'h'
        player_hand << deck.pop
        player_total = total(player_hand)
        prompt "You chose to hit!"
        prompt "Your cards are now: #{player_hand}"
        prompt "Your total is now : #{player_total}"
      end
  
      break if player_turn == 's' || player_total > TARGET_VALUE
    end
  
    if busted?(player_total)
      scores[:dealer] += 1
      display_winner(player_total, dealer_total)
      display_scores(scores)
      press_enter_to_continue
      tournament_over?(scores) ? break : next
    else
      prompt "You stayed at #{player_total}."
    end
  
    prompt "Dealer's turn..."
    prompt "Dealer's cards are: #{dealer_hand}"
    loop do
      break if dealer_total >= DEALER_BASELINE
      prompt 'The dealer hits...'
      dealer_hand << deck.pop
      dealer_total = total(dealer_hand)
      prompt "Dealer's cards are now: #{dealer_hand}"
    end
  
    if busted?(dealer_total)
      prompt "The dealer's total is now: #{dealer_total}"
      scores[:player] += 1
      display_winner(player_total, dealer_total)
      display_scores(scores)
      press_enter_to_continue
      tournament_over?(scores) ? break : next
    else
      prompt "Dealer stays at #{dealer_total}"
    end
    
    scores[:player] += 1 if player_total > dealer_total
    scores[:dealer] += 1 if dealer_total > player_total
    display_result(player_hand, dealer_hand, player_total, dealer_total)
    display_scores(scores)
    press_enter_to_continue
  
    break if tournament_over?(scores)
  end
  
  display_tournament_result(scores)
  another_tournament? ? next : break
end
