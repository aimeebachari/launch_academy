transactions = [50_000, -2_000, -25_000, 4_000, -12_000, 5_000, -800, -900,
  43_000, -30_000, 15_000, 62_000, -50_000, 42_000]

# Write Ruby code to find out the answers to the following questions:

# * What is the value of the first transaction?
puts "The first transaction is $#{transactions.first}."
puts "====="
# * What is the value of the second transaction?
puts "The second transaction is $#{transactions[1]}."
puts "====="
# * What is the value of the fourth transaction?
puts "The fourth transaction is $#{transactions[3]}."
puts "====="
# * What is the value of the last transaction?
puts "The last transaction is $#{transactions.last}."
puts "====="
# * What is the value of the second from last transaction?
puts "The second from the last is $#{transactions[-2]}."
puts "====="
# * What is the value of the 5th from last transaction?
puts "The fifth from the last is $#{transactions[-5]}."
puts "====="
# * What is the value of the transaction with index 5?
puts "$#{transactions[5]} is at index 5."
puts "====="
# * How many transactions are there in total?
puts "Dr. Dre has #{transactions.length} total transactions."
puts "====="
# * How many positive transactions are there in total?
puts "There are #{transactions.select { |num| num > 0 }.length } positive transactions."
puts "====="
# * How many negative transactions are there in total?
puts "There are #{transactions.select { |num| num < 0 }.length } negative transactions."
puts "====="
# * What is the largest withdrawal?
puts "$#{transactions.min} is the largest withdrawal."
puts "====="
# * What is the largest deposit?
puts "The largest deposit is $#{transactions.max}."
puts "====="
# * What is the small withdrawal?
puts "The smallest withdrawal is $#{transactions.find_all { |num| num < 0 }.max }."
puts "====="
# * What is the smallest deposit?
puts "The smallest deposit is $#{transactions.find_all { |num| num > 0 }.min }."
puts "====="
# * What is the total value of all the transactions?
sum = 0
transactions.each do |num|
  sum += num
end
puts "The total value of all the transactions is $#{sum}."
puts "====="
# * If Dr. Dre's initial balance was $239,900 in this account, what is the value of his balance after his last transaction?
initial_balance = 239_900
final_balance = 0
transactions.each do |num|
  final_balance = initial_balance += num
end
puts "Dr. Dre's final balance is $#{final_balance}."
puts "====="

best_records = {
 "Tupac"=>"All Eyez on Me",
 "Eminem"=>"The Marshall Mathers LP",
 "Wu-Tang Clan"=>"Enter the Wu-Tang (36 Chambers)",
 "Led Zeppelin"=>"Physical Graffiti",
 "Metallica"=>"The Black Album",
 "Pink Floyd"=>"The Dark Side of the Moon",
 "Pearl Jam"=>"Ten",
 "Nirvana"=>"Nevermind"
 }

# Write Ruby code to find out the answers to the following questions:

# * How many records are in `best_records`?
puts "There are #{best_records.length} records in 'best_records'."
puts "====="
# * Who are all the artists listed?
puts "The following artist are listed in 'best_records':"
best_records.each do |artist, _ablum|
  puts artist
end
puts "====="
# * What are all the album names in the hash?
puts "The following albums are listed in 'best_records':"
best_records.each do |_artist, album|
  puts album
end
puts "====="
# * Delete the `Eminem` key-value pair from the list.
best_records.delete('Eminem')
puts best_records.inspect
puts"====="
# * Add your favorite musician and their best album to the list.
best_records['OutKast'] = 'ATliens'
puts best_records.inspect
puts"====="
# * Change `Nirvana`'s album to another.
best_records['Nirvana'] = 'In Utero'
puts best_records.inspect
puts "====="
# * Is `Nirvana` included in `best_records`?
puts best_records.include?('Nirvana')
puts "====="
# * Is `Soundgarden` included in `best_records`?
puts best_records.include?('Soundgarden')
puts "====="
# * If `Soundgarden` is not in `best_records` then add a key-value pair for the band.
best_records['Soundgarden'] = 'Superunknown'
puts best_records.inspect
puts "====="
# * Which key-value pairs have a key that has a length less than or equal to 6 characters?
best_records.each do |artist, album|
  if artist.length <= 6
    puts "#{artist}: #{album}"
  end
end
puts "====="
# * Which key-value pairs have a value that is greater than 10 characters?
best_records.each do |artist, album|
  if album.length > 10
    puts "#{artist}: #{album}"
  end
end
