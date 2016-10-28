def divided_by(numerator, denominator)
  numerator.to_f / denominator.to_f
end

def all_this_random_math(number)
  {
    square: number ** 2,
    divided_by_two: divided_by(number, 2),
    divided_by_three: divided_by(number, 3),
    divided_by_four: divided_by(number, 4),
    plus_one: number + 1,
    minus_one: number - 1
  }
end

puts "What number am I thinking of?"

all_this_random_math(120).each do |operation, result|
  puts "When it's #{operation}, it equals #{result}"
end

def aimee_solution(hash)
  hash[:minus_one] + 1
end
puts aimee_solution(all_this_random_math(35)) #=> 35
# Challenge:
# - Write a method that replaces the "divided_by" *values*
#   with a method that takes the numerator and denominator
# - Write a method that reads the return value of all_this_random_math
#   and figures out the original number
hash = Hash.new
{dog: "Fido"}.keys
