require 'pry'

class Passenger

    @@all = []

    attr_reader :name
   
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        rides.all.find_all do |rides|
        rides.passenger == self
    end

def driver
    rides.map do |rides|
        rides.driver
    end

def total_distance
total = rides.map {|rides| rides.total_distance}
total.sum
end
end

def self.premium_members#
    passengers.all.find_all do |passengers|
        passengers.ride => 

        ##iterate with find_all to get all passengers
        ##then compare each passengers total ride to be => 100 miles.
    
    end
end
end

binding.pry