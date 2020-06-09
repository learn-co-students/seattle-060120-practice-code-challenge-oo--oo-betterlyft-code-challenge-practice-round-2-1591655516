class Passenger
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
            ride.passenger == self
        end
    end

    def drivers
        rides.collect do |ride|
            ride.driver
        end
    end

    def total_distance
        distances = rides.collect do |ride|
            ride.distance
        end
        distances.sum
    end

    def self.premium_members
        member_distances = {}
        Ride.all.each do |ride|
            if member_distances.has_key?(ride.passenger)
                member_distances[ride.passenger] += ride.distance
            else
                member_distances[ride.passenger] = ride.distance
            end
        end
        premium = member_distances.select do |passenger, distance|
            distance > 100
        end
        premium.to_a
        
        #binding.pry
        # all_distances = Rides.all.each do |ride|
        #     ride.total_distance
        # end
        # total_distance
        # binding.pry
    end

end
