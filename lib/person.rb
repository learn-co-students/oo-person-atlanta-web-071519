# your code goes here
require 'pry'

 class Person 
    attr_accessor :name, :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def clean? 
        @hygiene >=0 && @hygiene <=10 && @hygiene > 7
    end
    
    def happy?
        @happiness >=0 && @happiness <=10 && @happiness > 7
    end

    def get_paid(salary_amount)
        @bank_account += salary_amount
        "all about the benjamins"
    end

    def take_bath
       if @hygiene < 7 
            @hygiene += 4
        else 
            @hygiene = 10
        end
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out 
        if @happiness < 9 
            @happiness += 2 
        else 
            @happiness = 10 
        end

        if @hygiene < 3 
            @hygiene = 0 
        else 
            @hygiene -= 3
        end
        "♪ another one bites the dust ♫"
    end
    
    def call_friend(friend)
        if(self.happiness < 8 && friend.happiness < 8)
            self.happiness += 3
            friend.happiness += 3
        else 
            self.happiness = 10
            friend.happiness = 10
        end

        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 2
            person.happiness += 2
            return "blah blah sun blah rain"
        else 
            return "blah blah blah blah blah"
        end
    end
 end

person = Person.new("Courtney")
friend = Person.new("Jon")
binding.pry

 