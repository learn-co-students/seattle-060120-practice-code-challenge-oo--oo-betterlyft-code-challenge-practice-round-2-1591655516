require "pry"

class Passenger
    attr_reader :name
    attr_accessor :rides

    @@all = []

    def initialize(name)
        @name = name 
        @rides = rides
        @@all << self
    end 

    def name=(name)
        @name = name
    end 

    def rides
        @@self << rides
    end

    def self.all
        @@all
    end 

end 

binding.pry
