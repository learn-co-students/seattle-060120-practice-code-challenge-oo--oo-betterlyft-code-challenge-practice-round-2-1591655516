class Driver
    attr_accessor :name
    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def passengers_name
        # binding.pry
        my_rides = Ride.all.find_all {|rides| rides.driver == self}
        my_rides.collect {|rides| rides.passenger.name}.uniq
    end

    def rides
        Ride.all.find_all {|rides| rides.driver == self}
    end

    # def self.mileage_cap(distance)
    #     binding.pry
    #     Ride.all.find_all {|rides| rides.distance}
    # end
end
