require "pry"

class Drivers

    attr_reader :name, :passenger
    @@all = []

    def initialize(name)
        @name = name
        @passenger = passenger
        @@all << self
    end 

    def name
        @name
    end 


    # def passenger_name(passenger)
    #     @passenger =passenger
    # end 

    def self.all
        @@all
    end

end 
binding.pry
