require_relative 'person.rb'

class Employee < Person
  attr_accessor :position,  :salary, :date_hired
  def initialize(name)
    self.position = position
    self.salary = salary
    self.date_hired = date_hired

    super

  end

  def employee_info
    person_info
    puts "What is your position?"
    self.position = gets.chomp
    puts "what is your salary?"
    self.salary = gets.chomp
    puts "what date were you hired?"
    self.date_hired = gets.chomp
  end

  def show
    puts "#{name} has been a #{position} here since #{date_hired}"
  end
  # def array_create
  #   name = Array.new(self.name, self. )
end
