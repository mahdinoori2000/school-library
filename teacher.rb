require './person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(name, age, specialization, parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end

teacher1 = Teacher.new(35, 'mohsen', 'Mathematics')

puts teacher1.specialization
