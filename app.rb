require_relative 'book'
require_relative 'person'
require_relative 'student'
require_relative 'teacher'
require_relative 'classroom'
require_relative 'rental'
class App
  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  def create_book
    print "\nTitle: "
    name = gets.chomp
    print "Author: "
    author = gets.chomp
    new_book = Book.new(name, author)
    @books << new_book
    puts 'Book created successfully'
    puts "------------------------------------------------------------\n\n"
  end

  def create_person
    puts "\nDo you want to Create a Student (1) or a Teacher (2)?[input the number]:"
    option = gets.chomp.to_i

    if option == 1
    print "age: "
    student_age = gets.chomp.to_i
    print "name: "
    student_name = gets.chomp
    print "Has parent permission? [Y/N]"
    classroom = Classroom.new("class 1")
    parent_permission = gets.chomp.downcase
    new_student = Student.new(classroom, student_age, student_name)
    @people << new_student
    puts "Person created successfully\n\n"

    elsif option == 2
     print "age: "
     teacher_age = gets.chomp.to_i
     print "name: "
     teacher_name = gets.chomp
     print "Specialization: "
     specialization = gets.chomp
     new_teacher = Teacher.new(teacher_name, teacher_age, specialization)
     @people << new_teacher
    puts "Person created successfully\n\n"

    else 
      puts "Invalid Character"
    end
  end

  def create_rental
    if !@people.empty? 
    puts "Select a book from the following list by a number:"
    list_all_books
    book_index = gets.chomp.to_i
    selected_book = @books[book_index]
    puts "Select a person from the following list by a number:"
    list_all_people
    people_index = gets.chomp.to_i
    selected_people = @books[people_index]
    print "Date: "
    selected_date = gets.chomp
    new_rental = Rental.new(selected_book, selected_people, selected_date)
    @rentals << new_rental
    puts "Rental created successfully\n\n"
    else 
      puts "You don't have Book or Person in your library please add at least one"
  end
end

  def list_all_books
    if @books.empty?
      puts 'No books added'
    else
      puts '--------------------------------------'
      puts '---------- LIST OF BOOKS-------------'
      puts '--------------------------------------'
      @books.each_with_index do |book, index|
        puts "#{index} - Title: #{book.title}, Author: #{book.author}"
        puts "------------------------------------------------------------\n\n"
      end
    end
  end

  def list_all_people
    if @people.empty?
      puts "\n\nno person added"
      puts "------------------------------------------------------------\n\n"

    else
      puts '------------------------------------'
      puts '------- LIST OF People -------------'
      puts '------------------------------------'
      @people.each_with_index do |person, index|
        if person.is_a?(Student)
          role = "[Student]"
        else
          role = "[Teacher]"
        end
        puts "#{index} - #{role} - Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
      end
      puts "------------------------------------------------------------\n\n"
    end
  end

  def list_all_rentals
    if @rentals.empty?
      puts "No rentals added."
    else
      puts "--------------------------------------"
      puts "---------- LIST OF RENTALS -----------"
      puts "--------------------------------------"
  
      print "Enter the person's ID to list rentals: "
      person_id = gets.chomp.to_i
      @rentals.each_with_index do |rental, index|
        book = rental.book
        person = rental.person
        date = rental.date
  
        # Check if the person_id matches the rental's person's ID
        if person_id == 0  && person.id == person_id
          print "#{index + 1} - Date: #{date}, Book: #{book.title} By #{person.name}\n\n"
        end
      end
    end
  end
  

end
