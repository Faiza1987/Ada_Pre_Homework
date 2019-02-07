# 3 empty arrays to store student names, student ID numbers, and student email addresses
names = []
id_numbers = []
emails = []

stdn = 1
k = 0
id_num = ""
5.times do
  # Write a times loop that asks the user to enter in 5 student names (first and last name) and store those values in the first array in all uppercase even if the information is not entered by the user in uppercase.
  puts "Enter Student ##{stdn}'s first name: "
  first_name = gets.chomp.upcase
  puts "Enter Student ##{stdn}'s last name: "
  last_name = gets.chomp.upcase
  names << "#{first_name} #{last_name}"

  # Write a times loop to generate random student ID numbers from 111111 to 999999 and put these values to the student ID number array.
  rand_num = rand(111111...999999)
  # Optional enhancement #1: make sure none of the IDs are duplicates
  id_numbers.length.times do |k|
    while rand_num == id_numbers[k]
      rand_num = rand(111111...999999)
    end
    k += 1
  end
  # Optional enhancement #2: account for ID numbers whose last 3 digits are less than 100 (e.g. 111008) because these ID numbers will generate an email address with less than 3 digits at the end without special cases.
  id_num = rand_num.to_s
  id_numbers << id_num # push id_num to array

  stdn += 1

  # Write a times loop to generate student email addresses in the format: (first inital)+(last name)+(last 3 digits of student ID number)@adadevelopersacademy.org

  if first_name.include?(" ")
    i_after_spc = first_name.index(" ") + 1
    #iEnd = 6
    emails << "#{first_name[0, 1]}#{first_name[i_after_spc, 1]}#{last_name}#{id_num[3..5]}@adadevelopersacademy.org"
  else
    emails << "#{first_name[0, 1]}#{last_name}#{id_num[3..5]}@adadevelopersacademy.org"
  end
end

#  Write the code which will print out all the student names, ID numbers, and email addresses in parallel.
i = 0
5.times do |i|
  print "#{names[i]}, #{id_numbers[i]}, "
  puts "#{emails[i]}"

  i += 1
end
