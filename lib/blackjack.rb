require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = Random.new
  card.rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  total = card1 + card2
  display_card_total(total)
  total
end

def hit?(num)
  card_total = num
  prompt_user
  input = get_user_input
  if input == "h"
    card_total += deal_card
  elsif input == "s"
    card_total
  else
    invalid_command
    hit?(num)
  end
  card_total
end

def invalid_command
  puts "Please enter a valid command"
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  card_sum = 0
  welcome
  card_sum += initial_round
  card_sum = hit?(card_sum)
  display_card_total(card_sum)
  until card_sum >= 21
    card_sum = hit?(card_sum)
    display_card_total(card_sum)
  end
  if card_sum == 21
    puts "You win!"
  else
    end_game(card_sum)
  end
end
    
