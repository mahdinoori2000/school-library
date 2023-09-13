require './person'
require_relative 'classroom'

class Student < Person
  attr_accessor :classroom

  def initialize(classroom, age, name, parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end

  def join_classroom(classroom)
    classroom.add_student(self)
  end
end
student1 = Student.new(20, 'mahdi', 'second')

puts student1.classroom
