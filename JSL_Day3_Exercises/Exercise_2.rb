#Write a program that plays duck duck goose. Allow the user to enter the player's number they want to call goose on, and then say "duck" for each player before the "goose", then say "goose" for the chosen player.

#Which player do you want to Goose? 5

#  Player 1: Duck
#  Player 2: Duck
#  Player 3: Duck
#  Player 4: Duck
#  Player 5: Goose

puts "Which player do you want to Goose? "
choice = gets.chomp.to_i

player = 1

until player == choice do
  puts "Player #{player}: Duck"  
  player += 1
  
  break if player == choice
end

if player == choice
  puts "Player #{player}: Goose"
end

