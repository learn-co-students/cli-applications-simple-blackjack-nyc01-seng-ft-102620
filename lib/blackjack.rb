require 'pry'
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  num = rand(1..11)
  return num
  
end

def display_card_total(card_total)
  
  phrase = "Your cards add up to #{card_total}"
  puts phrase
  
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp 
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
 card1 = deal_card
  card2 = deal_card
  card_total = card1 + card2

  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  
  
  if input == 's'
    card_total 
    
  elsif input == 'h'
    card_total += deal_card
    card_total 
    
  else 
    invalid_command
    prompt_user
    input = get_user_input
  end 
    
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  
  until card_total > 21 do 
    card_total = hit?(card_total)
    
    if card_total > 21 
      end_game(card_total)
    end 
    display_card_total(card_total)
end

end 
    
