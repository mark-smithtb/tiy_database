
class Person
  attr_accessor :name, :phone_number, :address, :slack_account, :github_account
  def initialize(name)
    self.name = name
    self.slack_account = slack_account
    self.github_account = github_account
    self.phone_number = phone_number
    self.address = address

  end

  def person_info
    puts "Please input your phone number"
    self.phone_number = gets.chomp
    puts "Please input your address"
    self.address = gets.chomp
    puts "Please input your slack account"
    self.slack_account = gets.chomp
    puts "Please input your github account"
    self.github_account = gets.chomp
  end


end
