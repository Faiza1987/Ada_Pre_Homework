# Prompt for a jersey number. If that number is 12, 71, or 80, print That number is retired from the Seattle Seahawks!, otherwise do nothing.

puts "Please enter a jersey number for the Seattle Seahawks: "
jersey_number = gets.chomp

if jersey_number == "12" or jersey_number == "71" or jersey_number == "80"
  puts "That number is retired from the Seattle Seahawks!"
end
