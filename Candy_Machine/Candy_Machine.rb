#begin
puts "Welcome to Ada Developers Academy's Candy Machine!"
puts "(All candy provided is virtual)"
puts ""

puts "How much do ya have?"
money = gets
puts ""

puts "$#{money}, that's all?"
puts "Well, lemme tell ya what we have."
puts ""

puts "A $0.65 Twix"
puts "B $0.50 Chips"
puts "C $0.75 Nutter Butter"
puts "D $0.65 Peanut Butter Cup"
puts "E $0.55 Juicy Fruit Gum"
puts ""

puts "So, what'll ya have?"

A = "A"
B = "B"
C = "C"
D = "D"
E = "E"

option = gets.chomp
money = money.to_f

if money < 0.50
  puts "You're broke. Take your $#{money} and go elsewhere."
end

if money >= 0.50
  if option == "A" or option == "a" or option == "D" or option == "d" and money >= 0.65
    money -= 0.65
    
    puts "Thank you for purchasing candy through us!"
    puts "Please take your candy, and your $#{money} change!"   
  elsif option == "B" or option == "b" and money >= 0.50
    money -= 0.50

    puts "Thank you for purchasing candy through us!"
    puts "Please take your candy, and your $#{money} change!"
  elsif option == "C" or option == "c" and money >= 0.75
    money -= 0.75
    puts "Thank you for purchasing candy through us!"
    puts "Please take your candy, and your $#{money} change!"
  elsif option == "E" or option == "e" and money >= 0.55
    money -= 0.55
    money = money.round(2) * 100
    money /= 100

    puts "Thank you for purchasing candy through us!"
    puts "Please take your candy, and your $#{money} change!"
else
  puts "Invalid input. Please choose from the options provided."
end
end