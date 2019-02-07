# Create an array to store the following words: firetruck, fire drill, fire hydrant, firefighter, fireproof, fire station, fire hose. Then write code that uses the array to print out truck, drill, hydrant, fighter, proof, station, hose without modifying the array.

fire_stuff = ["firetruck", "fire drill", "fire hydrant", "firefighter", "fireproof", "fire station", "fire hose"]

# loop over string in each index of array
# print the section of string starting from the string[index] after 'e' and ending at the last index of string
# do this loop for all indexes in the array

fire_stuff.each do |i|
  puts i.delete(" ").gsub("fire", "")
end

print fire_stuff


