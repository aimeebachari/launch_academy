knife = (2.10 + 0.77 + 5.00 + 1.00 + 3.00).round(2)
puts "Knife Juggling:"
puts knife
torch = (6 + 3.50 + 7).round(2)
puts "Torch Juggling:"
puts torch
hand = (2 + 1).round(2)
puts "Hand Balancing:"
puts hand
blockhead = (0.75 + 0.43).round(2)
puts "Human Blockhead:"
puts blockhead
total = (knife + torch + hand + blockhead)
puts "Total:"
puts total
average = (total / 12).round(2)
puts "Average Tip Value:"
puts average
puts "Hello, Ladies and Gentlemen! We need a audience volunteer. Do we have any brave souls? Great! What's your name?"
print "> "
name = gets.chomp
puts "Everyone give a big round of applause for " + name +"."
puts "Tell me, " + name + "." " What is your favorite number?"
print "> "
number = gets.chomp
puts "Now watch us juggle " + number + " knives."
