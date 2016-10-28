dinner_total = 178
tip = 0.20
tip_amount = dinner_total * tip
total_bill = dinner_total + tip_amount
puts "You should tip " + "$" + tip_amount.to_s
puts "The total bill is " + "$" + total_bill.to_s
