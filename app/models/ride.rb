require "pry"

class Ride
    attr_accessor :driver, :passenger, :distance
    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all << self
    end 

    def driver=(driver)
        @driver = driver
    end
    
    def distance=(distance)
        @distance = distance
    end 

    def passenge=(passenger)
        @passenger =passenger
    end 

    # def self.average_distance
    # end 
end 



binding.pry