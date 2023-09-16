require_relative 'app'

my_class = App.new

@list = ['1 - List all books', '2 - List all people', '3 - Create a person', '4 - Create a book',
         '5 - Create a rental', '6 - List all rentals for a given person id', '7 - Exit']

def main_menu(my_class)
  methods = {
    1 => 'list_all_books',
    2 => 'list_all_people',
    3 => 'create_person',
    4 => 'create_book',
    5 => 'create_rental',
    6 => 'list_all_rentals',
    7 => 'exit'
  }
  puts @list
  get_input = gets.chomp.to_i

  if get_input == 7
    exit
  else
    my_class.send(methods[get_input])
    main_menu(my_class)
  end
end

main_menu(my_class)
