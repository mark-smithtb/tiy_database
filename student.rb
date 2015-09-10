require_relative 'person.rb'

class Student < Person
  def initialize(name)
    super
  end

  def student_info
    person_info
  end

  def show
    puts "Name: #{name}"
    puts "Phone number: #{phone_number}"
    puts "Address: #{address}"
    puts "Slack: #{slack_account}"
    puts "Github: #{github_account}"
  end
end
