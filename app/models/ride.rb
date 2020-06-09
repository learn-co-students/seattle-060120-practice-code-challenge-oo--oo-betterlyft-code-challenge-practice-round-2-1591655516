
class Ride

@@all = []

    attr_accessor :driver, :passenger, :distance

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all << self
    end

   def self.all
    @@all
end
def passenger_name
    passenger.all.find_all do |passenger|
        passenger.uniq == self
    end
end

end
# def self.average_distance
#     ride.map {}##map over to find the avg distance

