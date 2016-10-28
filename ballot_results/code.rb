vote_results = []
4.times do |precinct_index|
  vote_results[precinct_index] = []
  3.times do |candidate_index|
    vote_results[precinct_index][candidate_index] = rand(20..500)
  end
end

candidates = [
  'Mary Sue',
  'Sally Jane',
  'Billy Joe'
]

#list out vote results
vote_results.each_with_index do |precinct_results, precinct_index|
  puts "**In precinct #{precinct_index + 1}:**"

  candidates.each_with_index do |candidate, candidate_index|
    puts "* #{candidate} got #{vote_results[precinct_index][candidate_index]} votes"
  end

  puts ""
end

puts "How many people voted in precinct 1?"
sum = 0
vote_results[0].each do |number_of_votes|
  sum += number_of_votes
end
puts sum
puts "Who was the winning candidate in Precinct 4?"
max = 0
vote_results[3].each do |number_of_votes|
  if max < number_of_votes
    max = number_of_votes
  end
end
puts candidates[vote_results[3].index(max)]
puts "How many people voted for Mary Sue?"
sum = 0
vote_results.each do |array_of_votes|
  sum += array_of_votes[0]
end
puts sum
puts "How many people voted for Billy Joe?"
sum = 0
vote_results.each do |array_of_votes|
  sum += array_of_votes[2]
end
puts sum
puts "How many people voted for Sally Jane?"
sum = 0
vote_results.each do |array_of_votes|
  sum += array_of_votes[1]
end
puts sum
puts "How many people voted in total?"
sum = 0
vote_results.each do |array_of_votes|
  array_of_votes.each do |number_of_votes|
    sum += number_of_votes
  end
end
puts sum

puts "Who had the most votes?"
billy_joe_votes = 0
mary_sue_votes = 0
sally_jane_votes = 0

vote_results.each do |array_of_votes|
  mary_sue_votes += array_of_votes[0]
  sally_jane_votes += array_of_votes[1]
  billy_joe_votes += array_of_votes[2]
end

vote_counts = [
  billy_joe_votes,
  mary_sue_votes,
  sally_jane_votes
]
winners_count = vote_counts.max
puts "The winner is #{candidates[vote_counts.index(winners_count)]}, with #{winners_count} votes"
