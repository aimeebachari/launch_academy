puts "How many sides does your dice have?"
number_of_sides = gets.chomp
puts "How many times would you like to roll your pair of dice?"
number_of_rolls = gets.chomp

input = ""
while input != "n"
  number_of_rolls.to_i.times do
    dice_1 = rand(number_of_sides.to_i) + 1
    dice_2 = rand(number_of_sides.to_i) + 1
    puts "You rolled a #{dice_1} and a #{dice_2}. Total: #{dice_1 + dice_2}"
  end

  print "Roll again? (y/n) > "
  input = gets.chomp
end
