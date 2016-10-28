souq_cart = [
  "old paperback book",
  "potato",
  "red onion",
  "dried lemon",
  "frankincense",
  "medicinal herbs",
  "saffron",
  "glass spice jar",
  "red fabric",
  "orange fabric",
  "handicrafts",
  "small Persian rug",
  "medium Persian rug",
  "large Persian rug",
  "extra large Persian rug"
]

puts "Hello, shopper! What is your name?"
name = gets.chomp
puts "What would you like to add to your shopping cart?"
item = gets.chomp
shopping_cart = [ ]
items_not_available = [ ]
while item != "FINISHED"
  if souq_cart.include?(item)
    shopping_cart << item
  else
    items_not_available << item
  end
  puts "What else would you like to add? Type FINISHED when done."
  item = gets.chomp
end

if item == "FINISHED"
  puts "#{name}, thanks for trying our online Souq platform." +
    " Here are the items in your cart:\n\n"
  shopping_cart.each do |item|
    puts "* #{item}"
  end
  puts "\n"
  puts "BTW, we noticed you tried entering some items that aren't part of the" +
    " online Souq. We don't have the following items yet but will let you " +
    "know if they show up!:\n\n"
  items_not_available.each do |item|
    puts "* #{item}"
  end
end
