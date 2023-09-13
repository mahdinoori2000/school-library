require_relative 'person'
require_relative 'rental'

class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(person, date)
    rental = Rental.new(self, person, date)
    @rentals << rental
    person.rentals << rental
  end
end
