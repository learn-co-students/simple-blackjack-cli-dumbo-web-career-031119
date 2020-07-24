def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card_total = rand(1..11)
  return card_total
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
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
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end


def hit?(num)
  prompt_user
  input = get_user_input
  if input == "h"
    num += deal_card
  elsif input != "s"
  invalid_command
  end
  return num
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  num = 0
  welcome
  first = initial_round
  until num >= 21
    num += hit?(first)
    display_card_total(num)
  end
  end_game(num)
end
