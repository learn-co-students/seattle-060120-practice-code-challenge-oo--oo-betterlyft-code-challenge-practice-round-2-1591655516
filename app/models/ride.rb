class Ride
    attr_reader :driver, :passenger, :distance

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

    def self.average_distance
        total = all.collect {|ride| ride.distance}
        total.sum.to_f/total.size.to_f
    end

end
