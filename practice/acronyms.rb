require "pry"

acronyms = {
  "EST" => "Eastern Standard Time",
  "EOF" => "End of File",
  "SSN" => "Social Security Number",
  "UFO" => "Unidentified Flying Object",
  "NASA" => "National Aeronautics and Space Administration",
  "MTV" => "Music Television",
  "DAEMON" => "Disk And Execution Monitor"
}

puts acronyms["EST"], acronyms["EOF"], acronyms["MTV"].join(',')

acronyms.each do |key, value|
  puts "#{key}: #{value}"
end

acronyms.each_key { |key| "#{key},"

puts acronyms.keys.join(',')

if acronyms.has_key?("BLT")
  puts acronyms["BLT"]
else
  puts "I don't know that one!"
end

if acronyms["BLAT"]
  puts acronyms["BLAT"]
else
  puts "I don't know that one!"
end

new_key = "UFO"
new_value = "Unidentified Foreign Object"

if acronyms[new_key] && acronyms[new_key] == new_value
  puts "No need to update, I already know that one."
else
  puts "Updating acronyms..."
  acronyms[new_key] = new_value
end
