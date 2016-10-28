

def print_puzzle (word, guesses = [])
  word.each_char do |char|
    if guesses.include?(char)
      print "#{char} "
    else
      print "_ "
    end
  end
  puts
end

print_puzzle('triangle', ['t', 's,','g'])


# How would you take user input, save to array, and create a while loop to
# keep asking for letters until the word is complete?
