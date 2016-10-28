beer_bottles = 99

while beer_bottles >= 2
  puts "#{beer_bottles} bottles of beer on the wall, #{beer_bottles} bottles of beer."
  puts "Take one down, pass it around, #{beer_bottles -= 1} bottles of beer on the wall.\n\n"
  if beer_bottles == 2
    puts "#{beer_bottles} bottles of beer on the wall, #{beer_bottles} bottles of beer."
    puts "Take one down, pass it around, #{beer_bottles -= 1} bottle of beer on the wall.\n\n"
  elsif beer_bottles % 10 == 0
    puts "#{beer_bottles} bottles of beer on the wall, #{beer_bottles} bottles of beer.".gsub(".","!")
    puts "Take one down, pass it around, #{beer_bottles -= 1} bottles of beer on the wall.\n\n"
  elsif beer_bottles == 1
    puts "#{beer_bottles} bottle of beer on the wall, #{beer_bottles} bottle of beer."
    puts "Take one down, pass it around, no bottles of beer on the wall.\n\n"
  end
end

puts "No more bottles of beer on the wall, no more bottles of beer."
puts "Go to the store and buy some more, 99 bottles of beer on the wall.\n\n"
