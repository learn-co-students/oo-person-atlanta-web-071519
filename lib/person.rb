require 'pry'
class Person
    def initialize(name,bank_account = 25, happiness = 8, hygiene = 8)
        @name = name 
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end
    attr_reader :happiness, :hygiene,:name
    attr_accessor :bank_account
    #def bank_account
      #@bank_account
    #end

   # def bank_account= (new_account)
    #    @bank_account = new_account
   # end
    def happiness=(new_happiness)
        if new_happiness > 10 
            @happiness = 10
        elsif new_happiness < 0
            @happiness = 0
        else
            @happiness = new_happiness
        end
    end
   
  
    def hygiene=(new_hygiene)
        if new_hygiene > 10 
            @hygiene = 10
        elsif new_hygiene < 0
            @hygiene = 0
        else
            @hygiene = new_hygiene
        end
    end
   
  

    def happy?
        if @happiness > 7
            return true 
        else
            return false 
        end 
    end 

    def clean?
        if @hygiene > 7
            return true 
        else
            return false 
        end 
    end 

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end 

    def take_bath
        self.hygiene += 4
        hygiene=(self.hygiene)
        #hygiene=(@hygiene += 4)
        #if @hygiene > 10
         #   @hygiene = 10
        #end 
            return "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out
        self.hygiene -= 3 
        hygiene=(self.hygiene)
        self.happiness += 2
        happiness=(self.happiness)
        return "♪ another one bites the dust ♫" 
    end 

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1 
            return "blah blah sun blah rain"
        else  
            return "blah blah blah blah blah"
        end 
    end

    def happiness
        @happiness
    end
    binding.pry

   

end # your code goes here
