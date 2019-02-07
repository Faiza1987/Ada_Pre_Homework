# Create an array to store 3 boolean values entered in by the user. Print out YES if all the values are true and NO if at least one value is false. Hint: Prompt the user to enter true or false, and accept those values using gets. Since gets will give us back a string (instead of the boolean values we want) use if statements to convert those strings to boolean values.

bool_arr = []

while bool_arr.length < 3 do
  puts "Please enter either 'True' or 'False': "
  bool_value = gets.chomp
  #bool_arr << bool_value

  if bool_value == "true" || bool_value == "True"
    bool_value = true
    bool_arr << bool_value
  elsif bool_value == "false" || bool_value == "False"
    bool_value = false
    bool_arr << bool_value
  else
    bool_arr << bool_value
  end
end

print bool_arr
puts ""

#loop through array
  #if the value at indexes 0, 1, 2 == true
    #print "YES"
  #else if any value at indexes 0, 1, 2 == false
    #print "NO"

bool_arr.each do
  if bool_arr[0] && bool_arr[1] && bool_arr[2] == true
    puts "YES"
  else
      puts "NO"
  end
end
