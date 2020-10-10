def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  num = 1 + rand(11)
  return num
end

def display_card_total(card_total)
  # code #display_card_total here
  phrase = "Your cards add up to #{card_total}"
  puts phrase
end

def prompt_user
  # code #prompt_user here
  #expect($stdout).to receive(:puts).with("Type 'h' to hit or 's' to stay")
  puts "Type 'h' to hit or 's' to stay"
end 

def get_user_input
  # code #get_user_input here
  input = gets.chomp
  input
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card1 = deal_card
  card2 = deal_card
  card_total = card1 + card2
  
  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  # code hit? here
  prompt_user
  input = get_user_input

    if input == 's'
      card_total

    elsif  input == 'h'
      card_total += deal_card
      card_total

    else
      invalid_command
      prompt_user
      input = get_user_input
    end 
  
  card_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  card_total = initial_round
  
  until card_total > 21  do 
    card_total = hit?(card_total)
    if card_total > 21 
      end_game(card_total)
    end 
    display_card_total(card_total)
  end 
  
  #end_game(card_total)
  
end
    
