# your code goes here
require "pry"

class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
    
    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end
    def happiness=(input)
        if input > 10 then
            @happiness = 10
        elsif input < 0 then
            @happiness = 0
        else 
            @happiness = input
        end
    end
    def hygiene=(input)
        if input > 10 then
            @hygiene = 10
        elsif input < 0 then
            @hygiene = 0
        else 
            @hygiene = input
        end
    end
    def happy?
        @happiness > 7
    end
    def clean?
        @hygiene > 7
    end
    def get_paid(payment)
        @bank_account += payment
        "all about the benjamins"
    end
    def take_bath
        self.hygiene=(@hygiene + 4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.hygiene=(@hygiene - 3)
        self.happiness=(@happiness + 2)
        "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        self.happiness=(@happiness + 3)
        friend.happiness=(friend.happiness + 3)
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(friend, topic)
        convo = case topic
            when "politics"
                self.happiness=(@happiness - 2)
                friend.happiness=(friend.happiness - 2)
                "blah blah partisan blah lobbyist"
            when "weather"
                self.happiness=(@happiness + 1)
                friend.happiness=(friend.happiness + 1)
                "blah blah sun blah rain"
            else 
               "blah blah blah blah blah" 
            end

    end
end
# binding.pry
