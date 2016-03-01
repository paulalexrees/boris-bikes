require_relative 'bike'

class DockingStation
  def initialize
    @docked_bikes = 1
  end
  attr_reader 'docked_bikes'
  attr_writer 'docked_bikes'

  def release_bike
    if @docked_bikes == 0
      raise "No bikes available"
    else
      @docked_bikes -= 1
      Bike.new
    end
  end
  def dock(bike_to_dock)
    (!bike_to_dock.is_a? Bike) ? (puts "That's not a bike!") : (@docked_bikes += 1)
  end
end
