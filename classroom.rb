require_relative 'student'

class Classroom
  attr_accessor :lable
  attr_reader :students

  def initialize(lable)
    @lable = lable
    @students = []
  end

  def add_student(student)
    students << student
    student.classroom = self
  end
end
