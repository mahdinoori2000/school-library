require './person'

class Student
    attr_accessor :classroom
  def initialize(classroom, name = "Unknown", age = nil, parent_permission: true)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
student1 = Student.new("second","mahdi",20)

puts student1.classroom