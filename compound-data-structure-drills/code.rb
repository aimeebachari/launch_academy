people =
{
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
          "Domenick",
          "Trycia"
      ]
  },
  "Dr. Adela DuBuque" => {
        "phone" => "1-203-483-1226",
      "company" => "Heidenreich, Nitzsche and Dickinson"
  }
}


# Write Ruby code to find out the answers to the following questions:

# * How many people are in `people` (excluding children)?
total_people = 0
people.keys.each do |person|
  total_people += 1
end
puts "There are #{total_people} people."
puts "====="
# * What are the names of all the people?
puts "Here are the names of all the people:"
people.keys.each do |person|
  puts person
end
puts "====="
# * What is the phone number of Alia O'Conner PhD?
oconner_phone = people["Alia O'Conner PhD"]["phone"]
puts "Alia O'Conner PhD's phone number is #{oconner_phone}."
puts "====="
# * How many children does Brian Heller have?
heller_children = people["Brian Heller"]["children"]
total_children_heller = 0
heller_children.each do |child|
  total_children_heller += 1
end
puts "Brian Heller has #{total_children_heller} child(ren)."
puts "====="
# * What company does Dr. Adela DuBuque work for?
dr_dubuque_company = people["Dr. Adela DuBuque"]["company"]
puts "Dr. Adela DuBuque works for #{dr_dubuque_company}."
puts "======"
# * What are the names of the people who have children?
puts "The following people have children:"
people.each do |person, info|
  info.each do |category, data|
    if category == "children"
      puts person
    end
  end
end
puts "====="
# * What are the names of the people who do not have children?
puts "The following people do not have children:"
people.each do |person, info|
  if !info.key?("children")
    puts person
  end
end
puts "====="
# * What is Brian Heller's child's name?
heller_child_name = people["Brian Heller"]["children"][0]
puts "Brian Heller's child's name is #{heller_child_name}."
puts "====="
# * What is Maryse Johns' first child's name?
johns_first_child = people["Maryse Johns"]["children"][0]
puts "Maryse Johns' first child is named #{johns_first_child}."
puts "====="
# * Dr. Adela DuBuque just had a baby named Tomas. How would you update the hash for this information?
people["Dr. Adela DuBuque"]["children"] = ["Tomas"]
puts people
puts "====="

sets_of_people =
[
  {
         "Bernard Feil" => {
             "phone" => "(880) 434-0630",
           "company" => "Maggio Inc",
          "children" => [
              "Nikki"
          ]
      },
          "Ruby Hessel" => {
             "phone" => "1-467-852-4981",
           "company" => "Kemmer Inc",
          "children" => [
              "Sydney"
          ]
      },
          "Savanah Toy" => {
             "phone" => "440-632-0287",
           "company" => "Hudson, Stehr and Lind",
          "children" => [
              "Garth"
          ]
      },
      "Casandra Kemmer" => {
            "phone" => "1-515-759-7470",
          "company" => "Davis, Bernier and Hermann"
      },
             "Edd Rath" => {
            "phone" => "(522) 829-3164",
          "company" => "Mosciski LLC"
      }
  },
  {
         "Dagmar Brakus" => {
             "phone" => "1-881-313-1173",
           "company" => "Mitchell, Schmitt and Haley",
          "children" => [
              "Reuben"
          ]
      },
         "Einar Effertz" => {
            "phone" => "(265) 857-5141",
          "company" => "Pfeffer, Klocko and Von"
      },
      "Dr. Sigrid Nader" => {
             "phone" => "707.762.7870",
           "company" => "Weissnat, Hayes and Dickinson",
          "children" => [
              "Israel",
              "Elyse",
              "Wilfredo"
          ]
      }
  }
]

# Write Ruby code to find out the answers to the following questions:

# * How many people are in the first set of people?
puts "There are #{sets_of_people[0].size} people in the first set."
puts "====="
# * How many people are in the second set of people?
puts "There are #{sets_of_people[1].size} people in the second set."
puts "====="
# * What is Ruby Hessel's phone number?
hessel_phone_number = sets_of_people[0]["Ruby Hessel"]["phone"]
puts "Ruby Hessel's phone number is #{hessel_phone_number}."
puts "====="
# * What are the names of Dr. Sigrid Nader's children?
nader_children = sets_of_people[1]["Dr. Sigrid Nader"]["children"].join(", ")
puts "Dr. Sigrid Nader's children are: #{nader_children}."
puts "====="
# * What is Bernard Feil's child's name?
feil_child = sets_of_people[0]["Bernard Feil"]["children"][0]
puts "Bernard Feil's child is #{feil_child}."
puts "====="
# * What company does Casandra Kemmer work for?
kemmer_co = sets_of_people[0]["Casandra Kemmer"]["company"]
puts "Casandra Kemmer works for #{kemmer_co}."
puts "====="
# * Who are all the people in the first set that have an `m` in their Company names?
puts "The following people have an 'm' in their company name:"
sets_of_people[0].each do |person, info|
  info.each do |category, data|
    if category == "company" && data.downcase.include?("m")
      puts person
    end
  end
end
