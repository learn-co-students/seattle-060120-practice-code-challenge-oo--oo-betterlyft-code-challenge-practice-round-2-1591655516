class Ride
    attr_reader :passenger, :distance
    attr_writer :distance

    @@all=all

    def initialize(passenger, driver, distance)
        @passenger= passenger
        @driver= driver
        @distance= 0.0
    end

    def self.all
        @@all
    end





end
