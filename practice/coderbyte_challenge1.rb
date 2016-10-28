# create a method to detect using a conditional statement if letter passed through the method is a vowel.
def is_a_vowel?(letter)
  if ['a', 'e', 'i', 'o', 'u'].include? letter
    true
  else
    false
  end
end
# create a method to take a letter passed through and return the next letter in the alpahbet.
def next_in_alphabet(letter)
  letter.next
end
# create a method that increases the number passed through it by one.
def increased_by_one(number)
  number + 1
end
# create a method that will take a string passed through it and return a new work with each letter being the next in the alphabet.
def next_letter(string)
  i = 0
  new_word = ""
  # create a loop that circles through the string length and replaces each letter with the next in the alphabet.
  while i < string.length do
    new_letter = next_in_alphabet(string[i])
    # add condition that if the new letter is a vowel, capitalize it.
    if is_a_vowel?(new_letter)
      new_letter = new_letter.upcase
    end
    # redefine new word to equal the new word (being the next letter in alaphabet), and adding the next new letter to it.
    new_word = new_word + new_letter
    # redefining the counter to be the new letter plus one.
    i = increased_by_one(i)
  end
  new_word
end
# create a new method that capitalizes every letter in the string
def capitalize_every_letter(string)
  string.upcase
end
#  new method to lowercase every letter of a string.
def lowercase_every_letter(string)
  string.downcase
end
#  create method to add 5 to a number
def add_five(fixnum)
  fixnum + 5
end

puts capitalize_every_letter("Bronson")
puts next_in_alphabet("r")
puts next_letter("God")
puts lowercase_every_letter("AIMEE AND OMID ARE IN LOVE!")
puts add_five(5)
