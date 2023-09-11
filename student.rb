require './person'

class Student < Person
  attr_accessor :classroom

  def initialize(classroom, age, name, parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
student1 = Student.new(20, 'mahdi', 'second')

puts student1.classroom
