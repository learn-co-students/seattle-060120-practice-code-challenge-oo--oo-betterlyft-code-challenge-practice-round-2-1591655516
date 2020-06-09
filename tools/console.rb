require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
daniel = Passenger.new("Daniel")
mina = Passenger.new("Mina")
annie = Passenger.new("Annie")

bob = Driver.new("Bob")
liam = Driver.new("connie")
connie = Driver.new("connie")

r1 = Ride.new(daniel, bob, 10.0)
r2 = Ride.new(mina, bob, 5.0)
r3 = Ride.new(annie, liam, 1.0)
r4= Ride.new(daniel, connie, 15.0)




binding.pry
