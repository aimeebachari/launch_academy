puts "Let's play rock, paper, scissors!"
print "Choose rock (r), paper (p), or scissor (s): "
player = gets.chomp
computer = rand(3) + 1

if player != "r" && player != "p" && player != "s"
  puts "Sorry that's not a valid answer."
  exit
end

if computer == 1
  computer = "rock"
elsif computer == 2
  computer = "paper"
elsif computer == 3
  computer = "scissors"
end
puts "Computer chose #{computer}."

if player == "r"
  player = "rock"
elsif player == "p"
  player = "paper"
elsif player == "s"
  player = "scissors"
end
puts "Player chose #{player}."


if player == computer
   puts "It's a tie!"
elsif player == "rock" && computer == "paper" || player == "paper" && computer == "scissors" || player == "scissors" && computer == "rock"
  puts "Computer wins!"
else
  puts "Player wins!"
end
