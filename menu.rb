require_relative 'student.rb'
require_relative 'employee.rb'

class Menu

  def initialize
    @people = []
    @continue = nil

  end

  def create_employee
    puts 'please input name'
    name = gets.chomp
    employee = Employee.new(name)
    employee.employee_info
    @people << employee
  end

  def create_student
    puts 'please input name'
    name = gets.chomp
    student = Student.new(name)
    student.student_info
    @people << student
  end

  def choose_person_type
    puts 'If you want to add and employee type e or s if you want to add a student'
    person_choice = gets.chomp
    case
      when person_choice == 'e'
        create_employee
      when person_choice == 's'
        create_student
      end
    end

    def search
      puts 'Who are you looking for?'
      search = gets.chomp
      @people.find do | person |
       if person.name == search
         person.show
         return
       end
     end
     puts "That person is not in the database."
   end

   def remove
     puts "Who would you like to delete?"
     delete_choice = gets.chomp
     @poeple = @people.find do |person|
       if person.name == delete_choice
         @people.delete(person)
       end
     end
   end

   def menu
     puts 'Please choose one of the following A to add, S to search, or D to delete '
     input = gets.chomp
     case
     when input == 'a'
       choose_person_type
     when input == 's'
       search
     when input == 'd'
       remove
     end
  end

  def display
    while @continue != 'n'
      menu
      puts 'would you like to continue'
      @continue = gets.chomp
    end
  end
end
