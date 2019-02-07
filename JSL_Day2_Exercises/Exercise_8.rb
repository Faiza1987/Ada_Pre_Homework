# Prompt for a one of the following: SHORT, TALL, GRANDE, VENTI. Print out the number of ounces that drink includes (8, 12, 16, 20 respectively).

puts "Please enter a size for a Starbucks cup: "
size = gets.chomp

size = size.upcase

if size == "SHORT"
  puts "A Short is 8 ounces"
elsif size == "TALL"
  puts "A Tall is 12 ounces"
elsif size == "GRANDE"
  puts "A Grande is 16 ounces"
elsif size == "VENTI"
  puts "A Venti is 20 ounces"
else
  puts "Please input a valid Starbucks size. "
end
