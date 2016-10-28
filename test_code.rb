array = ["joanie", "annamarie", "muriel", "drew", "reva", "belle", "amari",
  "aida", "kaylie", "monserrate", "jovan", "elian", "stuart", "maximo",
  "dennis", "zakary", "louvenia", "lew", "crawford", "caitlyn"]

# Write Ruby code to find out the answers to the following questions:

# * How would you print out each name backwards in `array`?
array.each do |name|
  puts name.reverse
end
puts"====="
# * What are the total number of characters in the names in `array`?
total_characters = 0
array.each do |name|
  name_length = name.length
  total_characters += name_length
end
puts total_characters
puts "====="
# * How many names in `array` are less than 5 characters long?
less_than_five_letters = array.find_all { |name| name.length < 5 }
puts less_than_five_letters
puts "====="
# * How many names in `array` end in a vowel?
vowels = ["a", "e", "i", "o", "u"]
end_in_vowels = array.find_all { |name| vowels.include?(name[-1]) }
puts end_in_vowels.length
puts "====="
# * How many names in `array` are more than 5 characters long?
number_of_greater_five_letter_names = array.find_all { |name| name.length > 5 }
puts number_of_greater_five_letter_names.length
puts "====="
# * How many names in `array` are exactly 5 characters in length?
number_of_five_letter_names = array.find_all { |name| name.length == 5 }
puts number_of_five_letter_names
