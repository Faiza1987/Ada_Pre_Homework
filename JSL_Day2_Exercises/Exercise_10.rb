# Rewrite the solution to the previous problem adding this modification: do not process any employee if their hours worked is greater than 60, instead display the message Please see manager.

puts "Please input hourly rate of pay: $"
hourly_rate = gets.to_i

puts "Please input hours worked upto 40 hours: "
hours_worked = gets.to_i

puts "Please input any additional hours worked on top of your regular/scheduled working hours: "
overtime_hours = gets.to_i

total_hours = hours_worked + overtime_hours
puts "Total hours worked: #{total_hours}"

if total_hours <= 40
  gross_pay = hours_worked * hourly_rate
  puts "Your gross pay for #{total_hours} hours is $#{gross_pay}"
elsif total_hours > 40 and total_hours <= 60
  gross_pay = (hours_worked * hourly_rate) + (overtime_hours * (hourly_rate *1.5))
  puts "Your gross pay for #{total_hours} hours is $#{gross_pay}"
else #total_hours > 60
  puts "Please see manager."
end
