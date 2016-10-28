width = 8.0
length = 20.0
height = 8.0 / 12.0
cubic_feet = width * length * height
if cubic_feet < 50
  price = 20
elsif cubic_feet < 150
  price = 50
elsif cubic_feet < 300
  price = 100
else
  price = 150
end

puts "Cubic Feet: #{cubic_feet.round}"
puts "Quote Price: $#{price}"
