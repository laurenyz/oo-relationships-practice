require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

joseph = Passenger.new("Joseph")
lauren = Passenger.new("Lauren")

butler = Driver.new("Butler")
chris = Driver.new("Chris")
carl = Driver.new("Carl")

ride1 = Ride.new({passenger_obj: joseph, driver_obj: butler, distance: 25})
ride2 = Ride.new({driver_obj: chris, passenger_obj: lauren, distance: 65})
ride3 = Ride.new({passenger_obj: lauren, driver_obj: carl, distance: 51})
ride4 = Ride.new passenger_obj: lauren, driver_obj: chris, distance: 6.1

binding.pry
0