times = [2, 5, 7.5, 8.5, 9, 10, 11.5, 13.5, 14.5, 17, 18, 19, 24]
departure_time = 0.0

while departure_time == 0.0
  puts "What time are you leaving?"
  print "> "
  departure_time = gets.chomp.to_f
  if departure_time == 0.0
    puts "Sorry, I don't understand that time."
  end
end

next_times = times.select do |time|
  time > departure_time
end 

train_number = times.index(next_times[0]) + 1

puts "You should catch Train #{train_number} leaving at #{next_times[0]}.\n\n"

if train_number == 13
  puts "***DON'T STOP...BELIEVIN'!***

  Just a small town girl
  Living in a lonely world
  She took the midnight train going anywhere
  Just a city boy
  Born and raised in South Detroit
  He took the midnight train going anywhere

  A singer in a smoky room
  A smell of wine and cheap perfume
  For a smile they can share the night
  It goes on and on and on and on

  Strangers waiting, up and down the boulevard
  Their shadows searching in the night
  Streetlights people, living just to find emotion
  Hiding, somewhere in the night."
end
