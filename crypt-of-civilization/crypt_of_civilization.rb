crypt_of_civilization = ["Comptometer", "Box of phonographic records",
  "Plastic savings bank", "Set of scales", "Toast-O-Lator",
  "Sample of aluminum foil", "Donald Duck doll"]

extra = ["Container of beer", "Lionel model train set", "Ingraham pocket watch"]

crypt_of_civilization += extra

puts crypt_of_civilization.length
puts crypt_of_civilization.first
puts crypt_of_civilization.last
puts crypt_of_civilization[1]
puts crypt_of_civilization[2]
puts crypt_of_civilization[-2]
puts crypt_of_civilization.index("Toast-O-Lator")
puts crypt_of_civilization.any? { |item| item == "Container of beer" }
puts crypt_of_civilization.any? { |item| item == "Toast-O-Lator" }
puts crypt_of_civilization.any? { |item| item == "Plastic bird" }
puts
puts crypt_of_civilization.sort_by { |item| item.length }
puts
puts crypt_of_civilization.sort
puts
puts crypt_of_civilization.sort { |a, z| z <=> a}
puts
i = 0
while crypt_of_civilization.length > i
  puts crypt_of_civilization[i]
  i += 1
end
puts
crypt_of_civilization.each do |item|
  puts item
end
puts "====== Before all these removals"
puts crypt_of_civilization
puts "====== Remove first"
remove_first = crypt_of_civilization.shift
puts crypt_of_civilization
puts "====== Remove last"
remove_last = crypt_of_civilization.pop
puts crypt_of_civilization
puts "====== Remove specific ones"
remove_scales = crypt_of_civilization.delete("Set of scales")
puts crypt_of_civilization
puts "======"
remove_foil = crypt_of_civilization.delete("Sample of aluminum foil")
puts crypt_of_civilization
