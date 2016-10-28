def terms_of_use
  puts "***DISCLAIMER**"
  puts "This code may not work the way you expect it to."
  puts "By using this temperamental program, you agree not to"
  puts "sue the pants off of its creator."
  puts "***\n\n"
end

response = 'n'
while response.downcase != 'y'
  terms_of_use
  puts "You must accept our disclaimer to proceed! Do you accept? (y/n)"
  response = gets.chomp
end

puts "3 + 2 = #{rand(6)}"
