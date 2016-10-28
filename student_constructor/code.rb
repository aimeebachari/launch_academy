class Student
  attr_reader :first_name, :last_name, :grades

  def initialize(student_hash)
    @first_name = student_hash[:first_name]
    @last_name = student_hash[:last_name]
    @grades = student_hash[:grades]
  end
end

student_hash = {first_name: 'Jane', last_name: 'Doe', grades: [85, 100, 100]}
jane = Student.new(student_hash)

require 'pry'
binding.pry
