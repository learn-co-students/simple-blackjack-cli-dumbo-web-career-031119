card_total = 0

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card_total = rand(1..11)
  return card_total
end

def display_card_total(num)
puts "Your cards add up to #{num}"

end


def prompt_user
puts "Type 'h' to hit or 's' to stay"

  # answer = gets
end




def get_user_input
  input = gets.chomp
  # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
one = deal_card
two = deal_card
sum = one + two


display_card_total(one+two)
# puts sum
sum
  # code #initial_round here
end



def hit?(num)
  prompt_user
  prompt = get_user_input
  if prompt == "h"
    num += deal_card
  elsif prompt != "s"
    invalid_command
  end
  return num
end



# initial_round



def invalid_command
  # code invalid_command here
  puts "please choose valid choice"
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
