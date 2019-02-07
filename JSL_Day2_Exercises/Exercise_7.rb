# Prompt for a state. If the state is Washington, Oregon, or Idaho, print This state is in the PNW, otherwise print You should move to the PNW; it’s great here!

puts "Please enter the name of one of the 50 states: "
state = gets.chomp

state = state.downcase
state = state.capitalize

if state == "Washington" or state == "Oregon" or state == "Idaho"
  puts "This state is in the PNW"
else
  puts "You should move to the PNW; it's great here!"
end



