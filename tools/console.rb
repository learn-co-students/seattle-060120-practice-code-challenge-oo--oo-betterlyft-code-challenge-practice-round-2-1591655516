require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!


gabriel = Passenger.new("Gabriel")
john = Passenger.new("John")
david = Passenger.new("David")



april = Driver.new("April")
kelly = Driver.new("Kelly")
sam = Driver.new("Sam")

R1 = Ride.new("April","Gabriel", 30.0)
R2 = Ride.new("Kelly","John", 50.0)
R3 = Ride.new("Sam","David", 70.0)



binding.pry