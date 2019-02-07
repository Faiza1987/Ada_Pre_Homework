# Prompt for a number. If the number is less than 10, print ONE DIGIT. If the number is 100 or greater, print THREE DIGITS, otherwise print TWO DIGITS.

puts "Please enter a number: "
number = gets.to_i

if number < 10
  puts "ONE DIGIT"
elsif number >= 100
  puts "THREE DIGITS"
else
  puts "TWO DIGITS"
end