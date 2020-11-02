# your code goes here
class Person 
    attr_accessor :bank_account
    attr_reader :happiness, :hygiene, :name 

    def initialize(name)
        @name = name 
        @happiness = 8
        @hygiene = 8
        @bank_account = 25
    end

    def happiness=(num)
        @happiness = num 
        if num < 0
            @happiness = 0
        elsif num > 10
            @happiness = 10
        end
    end

    def hygiene=(num)
        @hygiene = num 
        if num < 0
            @hygiene = 0
        elsif num > 10
            @hygiene = 10
        end
    end

    #Non-attribute methods!
    def clean?
        hygiene > 7 ? true : false
    end 

    def happy?
        happiness > 7 ? true : false 
    end

    def get_paid(salary)
        @bank_account += salary 
        return "all about the benjamins"
    end 

    def take_bath 
        self.hygiene = @hygiene + 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness = @happiness + 2
        self.hygiene = @hygiene - 3
        return "♪ another one bites the dust ♫"
    end

    def call_friend(person)
        self.happiness=(@happiness + 3)
        person.happiness=(person.happiness + 3)

        return "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness=(@happiness - 2)
            person.happiness=(person.happiness - 2)
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness=(@happiness + 1)
            person.happiness=(person.happiness + 1)
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
end