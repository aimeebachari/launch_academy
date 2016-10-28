items_we_have = "chips popcorn skittles cliff-bar mentos gum cheetos m&ms"
puts "What item would you like?"
input = gets.chomp
if snack = items_we_have.index(input)
puts "Item index:"
puts snack
else snack.nil?
  puts "Sorry, we don't have that item today."
end
