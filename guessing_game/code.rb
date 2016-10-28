puts "Welcome to the Guessing Game! What difficulty would you like to play? Easy or hard"
print "> "
difficulty = gets.chomp
score = 1
require 'pry'

if difficulty == "easy"
  random_number = rand(10) + 1
  puts "I've picked a number between 1 and 10. Now guess it!"
elsif difficulty == "hard"
  random_number = rand(20) + 1
  puts "I've picked a number between 1 and 20. Now guess it!"
else
  puts "That's not a valid response."
  exit
end

print "> "
input = gets.chomp

binding.pry
while input.to_i != random_number
  puts "Nope, try again!"
  print "> "
  input = gets.chomp
  score += 1
end

if input.to_i == random_number
  puts "You win! Nice job!"
  puts "Your score was: #{score}"
end
