class Passenger

    attr_reader :name
    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        # binding.pry
        Ride.all.find_all {|rides| rides.passenger == self}
    end

    def drivers
        # binding.pry
        my_rides = Ride.all.find_all {|rides| rides.passenger == self}
        my_rides.collect {|rides| rides.driver}
    end

    def total_distance
        rides.collect {|rides| rides.distance}.sum
    end

    # def self.premium_members
#         #binding.pry
#         pax = Ride.all.find_all {|rides| rides.passenger}
#         pax.collect {|miles| miles} #.distance} #returns array of distance
#         if pax > 100.0
# #come back to this one
#     end
end
