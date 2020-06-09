require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
#pax
danira = Passenger.new("Danira")
erika = Passenger.new("Erika")
david = Passenger.new("David")

# driver
leo = Driver.new("Leo")
jimmy = Driver.new("Jimmy")

# ride
r1 = Ride.new(leo, danira, 3.2)
r2 = Ride.new(leo, erika, 2.0)
r3 = Ride.new(jimmy, david, 100.2)
r4 = Ride.new(jimmy, danira, 3.0)




binding.pry
