require 'pry'
def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
new_count = deal_card + deal_card
 display_card_total(new_count)
 new_count
end

def hit?(number)
prompt_user
input = get_user_input

  if input === "h"
   final_count = number + deal_card
   return final_count
  elsif input === 's'
    return number
    #binding.pry
  elsif input != 's' || 'h'
    invalid_command
    prompt_user
    get_user_input
   end
end

def invalid_command
  # code invalid_command here
   puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  first_round_number = initial_round 
  #binding.pry
  
  until first_round_number > 21
  new_card_total = hit?(first_round_number)
  display_card_total(new_card_total)
  end 
  end_game(new_card_total)
end
    
