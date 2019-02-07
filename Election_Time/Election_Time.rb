=begin
Create an election program that accepts input from the user and outputs the winner of the election
Input: Poll 10 people for their election vote
Output: Print the total votes cast as well as the winner of the election
=end

puts "Welcome to my election voting program."
puts "Election candidates are: Donald Duck, Minnie Mouse, and Goofy."

d_duck = 0
m_mouse = 0
goofy = 0
votes = 1

while votes <= 10 do
  puts "Vote ##{votes}: "
  candidate = gets.chomp

  until candidate == "Donald Duck" || candidate == "Minnie Mouse" || candidate == "Goofy" do
    puts "Please select from the listed candidates."
    candidate = gets.chomp

  end

  if candidate == "Donald Duck"
    d_duck += 1
  elsif candidate == "Minnie Mouse"
    m_mouse += 1
  else
    goofy += 1
  end
  votes += 1
end

# Election Report
puts ""
puts "ELECTION RESULTS...."
puts ""
puts "Vote Summary:"
puts ""
# Optional enhancement #2: Handle grammar of vote summary saying vote or votes appropriately
if goofy > 1
  puts "Goofy - #{goofy} votes"
else
  puts "Goofy - #{goofy} vote"
end
if m_mouse > 1
  puts "Minnie Mouse - #{m_mouse} votes"
else
  puts "Minnie Mouse - #{m_mouse} vote"
end
if d_duck > 1
  puts "Donald Duck - #{d_duck} votes"
else
  puts "Donald Duck - #{d_duck} vote"
end
puts ""

if goofy > m_mouse && goofy > d_duck
  puts "WINNER: Goofy!"
elsif m_mouse > goofy && m_mouse > d_duck
  puts "WINNER: Minnie Mouse!"
elsif d_duck > m_mouse && d_duck > goofy
  puts "WINNER: Donald Duck!"
else
  # Optional enhancement #1: Handle ties for a winner appropriately (using a coin toss)
  rand coin_toss = rand(1..2)
  heads = coin_toss % 2 == 0
  tails = coin_toss % 2 != 0
  if heads
    puts "Coin toss: #{heads}"
  else
    puts "Coin toss: #{tails}"
  end
  if d_duck == goofy
    if heads
      puts "Winner of the coin toss, and thus Winner of the Election is: Goofy!"
    else
      puts "Winner of the coin toss, and thus Winner of the Election is: Donald Duck!"
    end
  end

  if m_mouse == goofy
    if heads
      puts "Winner of the coin toss, and thus Winner of the Election is: Goofy!"
    else
      puts "Winner of the coin toss, and thus Winner of the Election is: Minnie Mouse!"
    end
  end

  if d_duck == m_mouse
    if heads
      puts "Winner of the coin toss, and thus Winner of the Election is: Minnie Mouse!"
    else
      puts "Winner of the coin toss, and thus Winner of the Election is: Donald Duck!"
    end
  end
end