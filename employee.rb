require_relative 'person.rb'
require 'date'

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
  def years_since_hire
    @tenure = (Date.today - Date.parse(self.date_hired))to_i / 365
  end
  def show
    puts "#{name} has been a #{position} for #{@tenure}years"
  end
end
