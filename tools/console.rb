require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

sean_driver = Driver.new("Sean")
lori_driver = Driver.new("Lori")

carly_pass = Passenger.new("Carly")
mike_pass = Passenger.new("Mike")

 carly_ride = Ride.new(lori_driver, carly_pass, 1.5)
 mike_ride = Ride.new(sean_driver, mike_pass, 2.0)
 carly_ride2 = Ride.new(sean_driver, carly_pass, 3.0)
 carly_ride3 = Ride.new(sean_driver, carly_pass, 200.0)

binding.pry
