# print a greeting, the ask what the user wants.
puts "Hello. I'm the first and only talking vending machine."
puts "What would you like today?"
# print ">" and take user input
print "> "
answer = gets.chomp
# put a line asking how many items the user wants.
puts "How many of those would you like?"
# print ">" and take user input
print "> "
amount = gets.chomp
# write a conditional statement that will take user input that contains the substring "tons".
# If tons appears in the amount, the code will put the answer a random number of times (0-14) and put a goodbye.
if amount.index("tons")
  while true do
    puts answer
    number = rand(15)
    # If the random number equals zero, it will put the goodbye.
    if number == 0
      puts "There you go! Come again!"
      break
    end
  end
# Any other integer entered, the code will print the answer that number of times, after which the goodbye will be printed.
else
  amount.to_i.times do
    puts answer
  end
  puts "There you go! Come again!"
end
