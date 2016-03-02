require_relative 'van'
require_relative 'bike'
require_relative 'docking_station'
require_relative 'garage'

station1 = DockingStation.new
station2 = DockingStation.new(30)
5.times {
  station1.dock(Bike.new)
  station2.dock(Bike.new)
}
5.times {station2.dock(Bike.new, false)}

van = Van.new

van.check_broken(station1)
p station2.bikes.shuffle!
p van.take_broken(station2)
garage = Garage.new
p van.deliver(garage)
p garage.bikes
