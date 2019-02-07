=begin
You don't trust your users. Modify the program below to require the user to enter the same value twice in order to add that value to the total.

Example run: 
Hello! We are going to total some numbers!
Enter a negative number to quit.

3
3
2
2
-1
-1

Result: 5
=end

puts "Hello! We are going to total some numbers!"
puts "Enter a negative number to quit."

total = 0
input = 0
input2 = 0

while input > -1 && input2 > -1
  puts "Enter your number: "
  input = gets.chomp.to_i

  puts "Enter your number again: "
  input2 = gets.chomp.to_i

  while input2 != input
    puts "Your numbers do not match. Please re-enter:"
    input2 = gets.chomp.to_i
  end

  if input2 >= 0
    total += input2
  end
end

#puts "Enter your number again: "
#input = gets.chomp.to_i

puts "Result: #{total}"