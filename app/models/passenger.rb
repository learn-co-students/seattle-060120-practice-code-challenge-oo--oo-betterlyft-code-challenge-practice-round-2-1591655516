require "pry"

class Passenger
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

 
    #Returns an array of Ride instances that this person has been on
    def rides
    rides = Ride.all.select{|rides|rides.passenger == self} 
        
    end

    def self.all
        @@all
    end 
    
    #Returns an array of Driver instances that this person has rode with
    
    def driver
    rides = Ride.all.select{|rides|rides.passenger == self} 
    
    rides.map{|rides|rides.driver}
    end

    #Returns the floating number that represents the total distance 
    #the passenger has travelled using the service
    def total_distance
    rides = Ride.all.select{|rides|rides.passenger == self}
    rides.map{|rides|rides.distance}
    number = rides.map{|rides|rides.distance}
    sum = 0
    number.each { |a| sum+=a }
    sum.to_f
    end

    
        
   
    #Returns an array of all Passengers 
    #who have travelled over 100 miles in total with the service
    def premium_members

        rides = Ride.all
        ans =[]
        for i in 0...(rides.size)
            if rides[i].distance >= 100
              ans<<rides[i].passenger.name
            end
          end
          ans
    end
end


binding.pry

