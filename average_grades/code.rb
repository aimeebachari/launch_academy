def average_grades(grades)
  sum = 0
  grades.each do |grade|
    sum += grade
  end
  average = sum / grades.length.to_f
end

def letter_grade(average)
  if average >= 90
    puts "A"
  elsif average >= 80
    puts "B"
  elsif average >= 70
    puts "C"
  elsif average >= 60
    puts "D"
  else
    puts "F"
  end
end

def rankings(students)
  students.each_with_index do |student, index|
    puts "#{index + 1}. #{student}"
  end
end
rankings(['Johnny', 'Jane', 'Sally', 'Elizabeth', 'Michael'])

janes_grades = [98,95,88,97,74]
janes_av = average_grades(janes_grades)
puts "Jane's average is #{janes_av}."
letter_grade(janes_av)

samathas_grades = [85,93,98,88,49]
samantha_av = average_grades(samathas_grades)
puts "Samantha's average is #{samantha_av}."
letter_grade(samantha_av)

matts_grades = [87,93,89,97,65]
matt_av = average_grades(matts_grades)
puts "Matt's average is #{matt_av}."
letter_grade(matt_av)
