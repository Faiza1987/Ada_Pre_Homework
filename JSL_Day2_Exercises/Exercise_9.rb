# Prompt for rate of pay and hours worked. Calculate gross pay. Provide time-and-a-half for hours worked beyond 40 (e.g., if you get paid $10/hr and work 45 hours in a week, you would gross $475 (40 x 10 + 5 x 15).

puts "Please input hourly rate of pay: $"
hourly_rate = gets.to_i

puts "Please input hours worked upto 40 hours: "
hours_worked = gets.to_i

puts "Please input any additional hours worked on top of your regular/scheduled working hours: "
overtime_hours = gets.to_i

total_hours = hours_worked + overtime_hours
puts total_hours

if total_hours <= 40
  gross_pay = hours_worked * hourly_rate
  #puts "Your gross pay for #{hours_worked} hours is $#{gross_pay}"
else
  gross_pay = (hours_worked * hourly_rate) + (overtime_hours * (hourly_rate *1.5))
  #puts "Your gross pay for #{hours_worked} hours is $#{gross_pay}"
end

puts "Your gross pay for #{hours_worked} hours is $#{gross_pay}"


