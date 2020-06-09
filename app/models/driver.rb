class Driver
    attr_reader :name
    
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select do |ride|
            ride.driver == self
        end
    end

    def passenger_names
        all_names = rides.collect do |ride|
            ride.passenger.name
        end
        all_names.uniq
    end

    def self.mileage_cap(cap)
        Ride.all.select do |ride|
            if ride.distance > cap
                ride.driver
            end
        end
    end

end
