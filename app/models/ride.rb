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

    def self.all
        @@all
    end

    #Returns the average distance across ALL rides
     def average_distance
        rides = Ride.all
        rides.map{|rides|rides.distance}  
        number = rides.map{|rides|rides.distance}
        sum = 0
        number.each { |a| sum+=a }
        sum.to_f/number.size.to_f 
    
     end 
end 



binding.pry