require_relative 'van'
require_relative 'bike'
require_relative 'docking_station'

station1 = DockingStation.new
station2 = DockingStation.new(30)
5.times {
  station1.dock(Bike.new)
  station2.dock(Bike.new)
}
station2.dock(Bike.new, false)
station2.dock(Bike.new, false)
van = Van.new

van.check_broken(station1)
p van.take_broken(station2)
