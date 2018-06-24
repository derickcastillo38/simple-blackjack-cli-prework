def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
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
  input = gets.chomp
  input.to_s
end

def end_game(num)
  # code #end_game here
  if num > 21
    puts "Sorry, you hit #{num}. Thanks for playing!"
  end
end

def initial_round
  # code #initial_round here
  first = deal_card
  second = deal_card
  sum = first + second
  display_card_total(sum)
end

def hit?(num)
  # code hit? here
  prompt_user
  input = get_user_input
  if input == 's'
    num
  else
    num + deal_card
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  total = initial_round.to_i

  until total > 21
    new_card = hit?(deal_card)
    total += new_card
    display_card_total(total)
  end

  end_game(total)
end
