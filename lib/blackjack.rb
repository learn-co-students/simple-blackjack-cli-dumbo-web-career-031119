def welcome
 puts "Welcome to the Blackjack Table" # code #welcome here
end

def deal_card
  return rand(1..11)
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
  if card_total > 21 
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card 
  display_card_total(sum)
  return sum
end

def hit?(sum)
  prompt_user 
  input = get_user_input 
  if input == "h"
    return sum += deal_card
    elsif input == "s"
    return sum
  else invalid_command
  end 
end

def invalid_command
    puts "Please enter valid command"
end
end 

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round

  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
end
  end_game(card_total)

end
