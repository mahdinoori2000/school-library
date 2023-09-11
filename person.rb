class Person
  attr_accessor :id, :name, :age

  def initialize(name = 'Unknown', age = nil, parent_permission: true)
    @id = Random.rand(1..10_000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  private

  def of_age?
    @age >= 18
  end

  public

  def can_use_services?
    if of_age? && @parent_permission
      true
    else
      false
    end
  end
end
person1 = Person.new('mahdi', 18)
puts person1.name, person1.id, person1.can_use_services?
