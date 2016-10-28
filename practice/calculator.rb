puts "What is the amount being invested?"
initial_value = gets.chomp.to_i
puts "What is the annual interst rate (percentage)?"
interest_rate = gets.chomp.to_f
puts "How many years will it accrue interest?"
years = gets.chomp.to_i
answer = initial_value * (1 + interest_rate) ** years

printf("The final value will be: %.2f after %d years \n", answer, years)
# Outputs "a format string with placeholders 3.141590 and 42"
