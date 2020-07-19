require "pry"

class Drivers

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all
    end

    #Driver#passenger_names
    #Returns an array of all Passengers' names a driver has driven. The names should be unique (no repeats).
    def passenger_names
        binding.pry
        rides = Ride.all.select{|rides|rides.driver == self} 
        uni = rides.map{|rides|rides.passenger}
        uni.uniq
    end

    #Driver#rides
    #Returns an array of all Rides a driver has made
    def rides
        rides = Ride.all.select{|rides|rides.driver == self} 
    end
#Driver.mileage_cap(distance)
#Takes an argument of a distance (float) and returns an array of all Drivers who have driven over the mileage
    
def mileage_cap(distance)
   
    rides = Ride.all
    ans =[]
    for i in 0...(rides.size)
        if rides[i].distance >= distance
          ans<<rides[i].driver.name 
        end
      end
      ans.uniq
end

end 
binding.pry



