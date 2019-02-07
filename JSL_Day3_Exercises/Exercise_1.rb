#Write a program that allows a user to play a guessing number game. Your program should generate a random number between 0 – 1000 (including 0, but not including 1000). Allow the user to make a guess until they guess the answer. After each guess you should print "higher" or "lower". When they guess it correctly print a winning message along with their total number of guesses.

# Guess my number: 10
#HIGHER
#Guess my number: 200
#LOWER
#Guess my number: 150
#HIGHER
#Guess my number: 160
#HIGHER
#Guess my number: 161
#YOU GOT IT IN 5 GUESSES!


rand_num = rand(0...1000)
counter = 0

puts "Guess my number: "
guess = gets.chomp.to_i
counter += 1

until rand_num == guess do
  break if rand_num == guess 

  if guess < rand_num
    puts "HIGHER"
  else
    puts "LOWER"
  end

  puts "Guess my number: "
  guess = gets.chomp.to_i
  counter += 1

end

puts "YOU GOT IT IN #{counter} GUESSES!"

