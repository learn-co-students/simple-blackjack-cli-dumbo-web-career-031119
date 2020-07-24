def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(tot)
  puts "Your cards add up to #{tot}"
  tot
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(tot)
  puts "Sorry, you hit #{tot}. Thanks for playing!"
end

def initial_round
  num = deal_card
  num += deal_card
  display_card_total(num)
end

def hit?(tot)
  prompt_user
  ans = get_user_input
  if ans == "h"
    tot += deal_card
  elsif ans != "s"
    while ans != "h" || ans != "s" do
      invalid_command
      prompt_user
      ans = get_user_input
    end
  end
  tot
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  tot = initial_round
  while tot < 21 do
    tot = hit?(tot)
    display_card_total(tot)
  end
end_game(tot)
end
    
