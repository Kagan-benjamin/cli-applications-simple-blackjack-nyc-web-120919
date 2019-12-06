def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(n)
  puts "Your cards add up to #{n}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp 
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  round1 = deal_card + deal_card
  display_card_total(round1)
  round1 
end

def hit?(card_total)
  valid_inputs = ["h", "s"]
  
  prompt_user
  user_input = get_user_input
  
  until valid_inputs.include?(user_input)
  invalid_command
  prompt_user
  user_input = get_user_input
  end
  
  if user_input == "h" 
    card_total += deal_card
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
  welcome 
  initial_round
  prompt_user
  get_user_input
  
end
    
