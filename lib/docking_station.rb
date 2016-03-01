require_relative 'bike'

class DockingStation
  def initialize
    @docked_bikes = 0
  end
  attr_reader 'docked_bikes'

  def release_bike
    Bike.new
  end
  def dock(bike_to_dock)
    (!bike_to_dock.is_a? Bike) ? (puts "That's not a bike!") : (@docked_bikes += 1)
  end
end
