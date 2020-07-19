require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

ronak = Passenger.new("Ronak")
mangu = Passenger.new("Mangu")

craig = Drivers.new("Craig")
john = Drivers.new("John")


ride1 = Ride.new(craig,ronak,4.4)
ride2 = Ride.new(john,ronak,5.4)
ride3 = Ride.new(craig,mangu,8.4)
ride4 = Ride.new(craig,ronak,999)
ride4 = Ride.new(craig,mangu,101)


binding.pry
