# Turning .each into English:

# 1. For every element "number" in the array, print out that number times 3.
# 2. For every element "name" in the array, print out the lenth of that name.
# 3. For every element "number" in the array, add the number to an accumulation called sum and then print sum.
# 4. For each key ("name") and value ("age") in the hash, print out a sentence stating: (Name) is (age) years old.
# 5. For each value in the accounts hash, add each value to an accumulation and print a sentence: The value of the account is (sum).
# 6. For each key ("name") and value ("address") in the addresses hash, print out a sentence: (Name) lives on (address).

# Turning English into .each:

# 1. For every element 'word' in the array 'sentences' print out the word.
# sentences.each do |word|
#   puts word
# end
# # 2. For every element 'phone_number' in the array 'numbers' print out the phone number if it is a MA area code.
# mass_area_codes = ['508', '617', '781']
# numbers.each do |phone_number|
#   if mass_area_codes.include?(phone_number[0..2])
#     puts phone_number
#   end
# end
# # 3.For every element number in the array 'numbers' print out every odd number.
# numbers.each do |number|
#   if number % 2 == 1
#     puts number
#   end
# end
# # 4.For every name-age pair in the hash 'ages', print out each pair.
# ages.each do |name, age|
#   puts "#{name}, #{age}"
# end
# # 5.For every name-age pair in the hash 'ages', print out a pair if the age is > 10.
# ages.each do |name, age|
#   if age > 10
#     puts "#{name}, #{age}"
#   end
# end
# # 6.For every name-age pair in the hash 'ages', print out a pair if the age is even.
# ages.each do |name, age|
#   if age % 2 == 0
#     puts "#{name}, #{age}"
#   end
# end

array = [28214, 63061, 49928, 98565, 31769, 42316, 23674, 3540, 34953, 70282,
  22077, 94710, 50353, 17107, 73683, 33287, 44575, 83602, 33350, 46583]

# Write Ruby code to find out the answers to the following questions:

# * What is the sum of all the numbers in `array`?
sum = 0
array.each do |number|
  sum += number
end
puts sum
puts "====="
# * How would you print out each value of the array?
array.each do |number|
  puts number
end
puts "====="
# * What is the sum of all of the even numbers?
sum = 0
array.each do |number|
  if number.even?
    sum += number
  end
end
puts sum
puts "====="
# * What is the sum of all of the odd numbers?
sum = 0
array.each do |number|
  if number.odd?
    sum += number
  end
end
puts sum
puts "====="
# * What is the sum of all the numbers divisble by 5?
sum = 0
array.each do |number|
  if number % 5 == 0
    sum += number
  end
end
puts sum
puts "====="
# * What is the sum of the squares of all the numbers in the array?
sum = 0
array.each do |number|
  sum += (number ** 2)
end
puts sum
puts "====="

array = ["joanie", "annamarie", "muriel", "drew", "reva", "belle", "amari",
  "aida", "kaylie", "monserrate", "jovan", "elian", "stuart", "maximo",
  "dennis", "zakary", "louvenia", "lew", "crawford", "caitlyn"]

# Write Ruby code to find out the answers to the following questions:

# * How would you print out each name backwards in `array`?
array.each do |name|
  puts name.reverse
end
puts"====="
# * What are the total number of characters in the names in `array`?
total_characters = 0
array.each do |name|
  total_characters += name.length
end
puts total_characters
puts "====="
# * How many names in `array` are less than 5 characters long?
puts array.find_all { |name| name.length < 5 }
puts "====="
# * How many names in `array` end in a vowel?
vowels = ["a", "e", "i", "o", "u"]
puts array.find_all { |name| vowels.include?(name[-1]) }.length
puts "====="
# * How many names in `array` are more than 5 characters long?
puts array.find_all { |name| name.length > 5 }.length
puts "====="
# * How many names in `array` are exactly 5 characters in length?
puts array.find_all { |name| name.length == 5 }
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

#  Write Ruby code to find out the answers to the following questions:

# * How would you print out all the names of the artists?
best_records.keys.each do |artist|
  puts artist
end
puts "====="
# * How would you print out all the names of the albums?
best_records.values.each do |album|
  puts album
end
puts "====="
# * Which artist has the longest name?
longest_name = ""
best_records.keys.each do |artist|
  if artist.length > longest_name.length
    longest_name = artist
  end
end
puts longest_name
puts "====="
# * How would you change all the album titles for every artist to `Greatest Hits`?
best_records.keys.each do |artist|
  best_records[artist] = 'Greatest Hits'
end
puts best_records.inspect
puts "====="
# * How would you delete a key-value pair if the artist's name ends in a vowel?
vowels = ['a', 'e', 'i', 'o', 'u']
best_records.keys.each do |artist|
  if vowels.include?(artist[-1])
    best_records.delete(artist)
  end
end
puts best_records.inspect
puts "====="

ages = {"Arch"=>89, "Gretchen"=>93, "Simone"=>12, "Daija"=>96, "Alivia"=>22,
  "Serena"=>28, "Alek"=>3, "Lula"=>24, "Christian"=>62, "Darryl"=>47,
  "Otha"=>32, "Evalyn"=>44, "Lincoln"=>27, "Rebeca"=>99, "Beatrice"=>99,
  "Kelton"=>10, "Zachary"=>18, "Aurelie"=>91, "Dell"=>71, "Lisandro"=>22}

# Write Ruby code to find out the answers to the following questions:

# * How would you print out all the names of `ages`?
ages.keys.each do |name|
  puts name
end
puts "====="
# * How would you print out each key-value pair in the format of `<name> is <age> years old.`?
ages.each do |name, age|
  puts "#{name} is #{age} years old."
end
puts "====="
# * How would you print out every person with odd numbered age?
ages.each do |name, age|
  if age % 2 == 1
    puts "#{name}, #{age}"
  end
end
puts "====="
# * How would you delete everyone under 25 years of age?
ages.each do |name, age|
  if age < 25
    ages.delete(name)
  end
end
# * What is the name and age of everyone with a name greater than or equal to 5 characters?
ages.each do |name, age|
  if name.length >= 5
    puts "#{name}, #{age}"
  end
end
puts "====="

people =  {
  "Alia O'Conner PhD" => {
    "phone" => "538.741.1841",
    "company" => "Leuschke-Stiedemann",
      "children" => [
        "Simone",
        "Cindy",
        "Jess"
      ]
  },
  "Ike Haag" => {
    "phone" => "(661) 663-8352",
    "company" => "Carter Inc",
    "children" => [
      "Joe",
      "Ofelia",
      "Deron"
    ]
  },
  "Brian Heller" => {
    "phone" => "1-288-601-5886",
    "company" => "O'Conner Group",
    "children" => [
      "Renee"
    ]
  },
  "Maryse Johns" => {
    "phone" => "218-571-8774",
    "company" => "Kuhlman Group",
    "children" => [
      "Dominick",
      "Tricia"
    ]
  },
  "Dr. Adela DuBuque" => {
    "phone" => "1-203-483-1226",
    "company" => "Heidenreich, Nietzsche and Dickinson"
  }
}

# Write Ruby code to find out the answers to the following questions:

# * How would you print out all the names of `people`?
people.keys.each do |name|
  puts name
end
puts "====="
# * How would you print out all the names of `people` and which company they work for?
people.each do |name, information|
  information.each do |category, data|
    if category == "company"
      puts "#{name} works for #{data}"
    end
  end
end
puts "====="
# * What are the names of all the children of everyone in `people`?
people.each do |name, information|
  information.each do |category, data|
    if category == "children"
        puts "#{name}'s children are #{data.join(", ")}."
    end
  end
end
puts "====="
# * What are the names of all the companies that people work for?
people.each do |name, information|
  information.each do |category, data|
    if category == 'company'
      puts data
    end
  end
end
puts "====="
# * How would you convert all the phone numbers to the same standard (pick one)?
people.each do |name, information|
  information.each do |category, data|
    if category == 'phone' && data == '538.741.1841'
      information[category] = data.gsub('.', '-')
    elsif category == 'phone' && data == '(661) 663-8352'
      information[category] = data.gsub('(', '').gsub(')', '').gsub(' ', '-')
    elsif category == 'phone' && data == '1-288-601-5886'
      information[category] = data[2..-1]
    elsif category == 'phone' && data == '1-203-483-1226'
      information[category] = data[2..-1]
    end
  end
end
puts people.inspect
puts "====="

people = [
  {
    "Derek Wehner" => {
      "phone" => "588-047-7782",
      "company" => "Daniel-Carroll",
      "children" => [
        "Phoebe",
        "Gretchen",
        "Wiley"
      ]
    },
    "Ali Koelpin" => {
      "phone" => "1-127-057-0020",
      "company" => "Rau, Rutherford and Lockman",
      "children" => [
        "Juwan"
      ]
    },
    "Ervin Prohaska" => {
      "phone" => "(393) 630-3354",
      "company" => "Carter Inc",
      "children" => [
        "Virgil",
        "Piper",
        "Josianne"
      ]
    },
    "Hellen Borer" => {
      "phone" => "1-687-825-0947",
      "company" => "Maggio, Ferry and Moen"
    }
  },
  {
    "Elinor Johnson" => {
      "phone" => "819.911.5553",
      "company" => "Pollich Group"
    }
  },
  {
    "Richmond Murray" => {
      "phone" => "1-516-432-2364",
      "company" => "Sporer and Sons",
      "children" => [
        "Kade",
        "Sage"
      ]
    },
    "Nakia Ferry" => {
      "phone" => "134-079-2237",
      "company" => "Hamill, O'Keefe and Lehner",
      "children" => [
        "Rollin"
      ]
    }
  }
]

# Write Ruby code to find out the answers to the following questions:

# * What are the names of everyone in `people`?
people.each do |person|
  person.keys.each do |name|
    puts name
  end
end
puts "====="
# * What are the names of all the children in `people`?
people.each do |person|
  person.each do |name, info|
    info.each do |category, data|
      if category == "children"
        puts "#{data.join(", ")}"
      end
    end
  end
end
puts "====="
# * How would you create a new hash called `phone_numbers` that has a key of a name and value of a phone number in `people`?
phone_numbers = Hash.new
people.each do |person|
    person.each do |name, info|
      info.each do |category, data|
        if category == "phone"
        phone_numbers[name] = data
      end
    end
  end
end
puts phone_numbers
puts "====="
# * How would you create a new hash called `employers` that has a key of a name and a value of a company name in `people`?
employers = Hash.new
people.each do |person|
  person.each do |name, info|
    info.each do |category, data|
      if category == "company"
        employers[name] = data
      end
    end
  end
end
puts employers
puts "====="
# * How would you create a new hash called `children_count` that has a key of a name and a value of the number of children a person has?
children_count = Hash.new
people.each do |person|
  person.each do |name, info|
    info.each do |category, data|
      if category == "children"
        children_count[name] = data.length
      end
    end
  end
end
puts children_count
