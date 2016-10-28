# use array of hashes to determine the total strokes, total par, and total over/under par
golf_score = [
  { par: 5, score: 7 },
  { par: 4, score: 5 },
  { par: 3, score: 3 },
  { par: 4, score: 4 },
  { par: 4, score: 4 },
  { par: 3, score: 2 },
  { par: 4, score: 5 },
  { par: 5, score: 5 },
  { par: 4, score: 5 },
  { par: 5, score: 5 },
  { par: 4, score: 4 },
  { par: 4, score: 4 },
  { par: 3, score: 3 },
  { par: 4, score: 2 },
  { par: 4, score: 5 },
  { par: 4, score: 1 },
  { par: 3, score: 2 },
  { par: 5, score: 5 }
]
total_score = 0
total_par = 0

golf_score.each do |hole|
    total_score += hole[:score]
    total_par += hole[:par]
end

par_value = total_score - total_par

puts "Total Strokes: #{total_score}"
puts "Total Par: #{total_par}"
term = ""
if par_value >= 0
  term = "over"
else term = "under"
  par_value = par_value * -1
end
puts "You were #{par_value} #{term} par."
