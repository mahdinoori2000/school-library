require './person'

class Student < Person
    attr_accessor :classroom

    def initialize(classroom, age, name, parent_permission: true)
        super(name, age, parent_permission: parent_permission)
        @classroom = classroom
      end

  def play_hooky
    '¯(ツ)/¯'
  end
end
student1 = Student.new("mahdi", 20,"second")

puts student1.classroom