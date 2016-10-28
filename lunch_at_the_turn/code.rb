menu = {
  "Hamburger" => 4.00,
  "Hot Dog" => 3.00,
  "Fries" => 2.00,
  "Chips" => 1.00,
  "Water" => 1.25,
  "Soda" => 1.50
}

items = [ ]
puts "Welcome to Bachari Burger! Can I take your order?"
order = gets.chomp
# order = "Hamburger, Hot Dog, Fries"
items = order.split(", ")

# items = ["Hamburger", "Hot Dog", "Fries"]
# go through each item, and reference it's value

total = 0
items.each do |item|
  if menu.key?(item)
    total += menu[item]
  else
    puts "Sorry, we don't have #{item}."
  end
end

puts "Thanks! Your total is $#{sprintf "%.2f", total}. Have a great day!"
