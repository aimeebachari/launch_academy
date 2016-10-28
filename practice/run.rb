# we run down the path to the lake
puts "Enterting the park, running down to the lake"
lap_count = 0

# we start our laps
# the 'lap_count += 1' is shorthand for 'lap_count = lap_count +1'
while lap_count < 3 do
  lap_count += 1
  puts "That's a Lap #{lap_count} around the lake"
end

# we're done with our laps, now on with the rest of the running
puts "Now through the rest of the park"
