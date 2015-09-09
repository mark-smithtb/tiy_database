require_relative 'person.rb'

class Student < Person
  def initialize(name)
    super
  end

  def student_info
    person_info
  end


def show
  puts "name: #{name}"
  puts "phone number: #{phone_number}"
end
end
