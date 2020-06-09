class Ride

    attr_accessor :driver, :passenger, :distance
    @@all = []

    def initialize (driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance.to_f
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance 
        array = self.all.collect {|rides| rides.distance}
        array.sum/array.length
    end
end

