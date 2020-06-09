class Passenger
    attr_reader :name
    attr_accessor :rides, :driver


    @@all = []
    def initialize(name)
        @name= name
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.
    end



end
