def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total (cards)
  puts "Your cards add up to #{cards}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game (card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  total = deal_card + deal_card
  display_card_total (total)
  total
end

def hit? (card_total)
  new_total = card_total
  prompt_user
  user_input = get_user_input
  while user_input != 's' && user_input != 'h' do
    invalid_command
    prompt_user
    user_input = get_user_input
  end
  if user_input == 'h'
    new_total += deal_card
    display_card_total (new_total)
    new_total
  else
    new_total
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
  current_total = initial_round
  while current_total <= 21 do
    current_total = hit? (current_total)
  end
  end_game (current_total)
end
