# Initialize an array with size 5 to store student information inside a hash for each index of the array
student_info = Array.new(5, Hash.new)

stdn = 1
id_num = ""


5.times do |i|
  # Get student's first and last names
  print "Enter Student ##{stdn}'s first name: "
  first_name = gets.chomp.upcase
  print "Enter Student ##{stdn}'s last name: "
  last_name = gets.chomp.upcase

  # Generate a random 6-digit student ID number and store it in variable called id_num after converting it to string so it can be concatenated to the email address.
  rand_num = rand(111111...999999)
  id_num = rand_num.to_s

  # Create student email (first_inital, last name, last 3 digits of ID number @adadevelopersacademy.org)
  # Account for people with 2 first names (Mary Jane Watson) and make sure that the first initial of the second first name is also included in the email (mjwatson000@adadevelopersacademy.org instead of mwatson000@adadevelopersacademy.org)
  if first_name.include?(" ")
    i_after_spc = first_name.index(" ") + 1
    emails = "#{first_name[0, 1]}#{first_name[i_after_spc, 1]}#{last_name}#{id_num[3..5]}@adadevelopersacademy.org"
  else
    emails = "#{first_name[0, 1]}#{last_name}#{id_num[3..5]}@adadevelopersacademy.org"
  end

  stdn += 1

  # Store info in each hash of the array (each student has their own hash)
  student_info[i] = Hash[[
    ["first_name", first_name],
    ["last_name", last_name],
    ["id_num", id_num],
    ["emails", emails]]]

end

# Loop through the student_info array and print the contents of the Hash at index[i]
i = 0
5.times do |i|
  print "Student ##{i + 1}: #{student_info[i]["first_name"]}, #{student_info[i]["last_name"]}, #{student_info[i]["id_num"]}, "
  puts "#{student_info[i]["emails"]}"

  i += 1
end
