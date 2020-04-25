# your code goes here
require 'pry'
class Person
  attr_reader :name, :hygiene, :happiness
  attr_accessor :bank_account, :salary
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
def clean?
  hygiene > 7 ? true:false
end
def get_paid(salary)
  #binding.pry
  @bank_account += salary
  "all about the benjamins"
end
def take_bath
  self.hygiene += 4
  "♪ Rub-a-dub just relaxing in the tub ♫"
end
def work_out
  self.hygiene -=3
  self.happiness += 2
  "♪ another one bites the dust ♫"
end
def call_friend(friend)
  self.happiness += 3
  friend.happiness += 3
  "Hi #{friend.name}! It's #{name}. How are you?"
end
def start_conversation (person, topic)
if topic == "politics"
  person.happiness -= 2
  binding.pry
end



end
end
