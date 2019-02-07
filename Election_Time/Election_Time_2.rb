def num_check(num)
    num = num.to_i
    while num <= 0
      puts "It cannot be zero or a negative number. Please enter an integer."
      num = gets.chomp.to_i
  end
  return num
end

puts "Welcome to by election voting program."

# How would you change your code to allow flexibility in the number and names of the candidates? e.g. take the count and names from the user? 
puts "\nHow many candidates are there?"
total_candidates = num_check(gets.chomp)

# Create empty Hash to store candidate_name(key) and votes(value) as a pair
candidate_info = Hash.new

# prompt for candidates names until there are as many names as the number of candidates
puts "\nEnter the names of the candidates when prompted."
i = 1
while i <= total_candidates do
    puts "\nCandidate ##{i}: "
    # save names in a variable called candidate_name
    candidate_name = gets.chomp
    # push the variable candidate_name into Hash in the 'key' slot with a default value of 0
    candidate_info[candidate_name] = 0
    
    i += 1
end
puts ""
print candidate_info

# How would you change your code to allow any number of voters?
# prompt for how many votes will be cast
puts "\n\nHow many votes will be cast today?"

# save the user input in a variable called total_votes
total_votes = num_check(gets.chomp)

# prompt users to to cast their votes for a candidate
puts "\n\nType in the name of the candidate you are voting for when prompted."

k = 1
while k <= total_votes do
  puts "\nVote ##{k}: "
# save the user input in a variable called vote
  vote = gets.chomp
    #puts candidate_info.key?(vote) # returns true

    # If key exists in candidate_info hash, increment the value of that key
    # Check the value of the key inputted by the user agaisnt the values of the keys already in the hash, excluding the most recent key that was just incremented in the above if statement
    
    if candidate_info.key?(vote)
        candidate_info[vote] += 1
    else # write-in votes
        candidate_info[vote] = 0
        candidate_info[vote] += 1
    end
    k += 1
end
puts ""
print candidate_info
puts ""

# Accordingly, how would update your code for considering ties?
# Related: how would you account for a n-way tie e.g. mickey mouse, donald duck and goofy received the same number of votes?

# candidate_info.each { |k, v| puts k if v == candidate_info.values.max }
sorted_candidate_info = candidate_info.sort_by { |k, v| [-v, k] }.to_h
print "\n#{sorted_candidate_info}"

winner = sorted_candidate_info.values[0]

i = 0
sorted_candidate_info.each do
    if winner < sorted_candidate_info.values[i]
        winner = sorted_candidate_info.values[i]
    end

    i += 1
end

winner_name = sorted_candidate_info.select { |_, v| v == winner }.keys


# Election Report

# Select winner randomly from array that stores all the candidates who received the same number of votes
puts "\n\nELECTION RESULTS...."
puts "\n\nVote Summary:"
puts ""

# Handle grammar of vote summary saying vote or votes appropriately
k = 0
sorted_candidate_info.each do
    if sorted_candidate_info.values[k] > 1
        puts "#{sorted_candidate_info.keys[k]} - #{sorted_candidate_info.values[k]} votes"
    else
        puts "#{sorted_candidate_info.keys[k]} - #{sorted_candidate_info.values[k]} vote"
    end
    k += 1
end

j = rand(0...winner_name.length)
puts "\n\nCommence tie-breaker and the Winner is....#{winner_name[j].capitalize}!"