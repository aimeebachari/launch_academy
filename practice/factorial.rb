def first_factorial(number)
  factorial = 1
  (1..number).each do |i|
  factorial = factorial * i
  end
  factorial
end

puts first_factorial(4)
