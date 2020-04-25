# your code goes here
require 'pry'
class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
    #binding.pry
  end
def happiness=(happiness)
  @happiness = happiness
  @happiness = 10 if happiness > 10
  @happiness = 0 if happiness < 0
end
def hygiene=(hygiene)
  @hygiene = hygiene
  @hygiene = 10 if hygiene > 10
  @hygiene = 0 if hygiene < 0
end
def happy?
  happiness > 7 ? true:false
end
def clean
  hygiene > 7 ? true:false
end
end
