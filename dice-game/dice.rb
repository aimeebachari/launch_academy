input = nil
while input != "S"
  dice_1 = rand(6) + 1
  dice_2 = rand(6) + 1
  puts "You rolled a #{dice_1} and a #{dice_2}."
  puts "Total: #{dice_1 + dice_2}"
  puts "Press 'Enter' to roll again, 'S' to stop."
  input = gets.chomp
end
