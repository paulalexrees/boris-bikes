require_relative 'bike'

class DockingStation
  $DEFAULT_CAPACITY = 20
  def initialize
    @bikes = []
  end
  attr_accessor 'bikes'

  def release_bike
    if empty?
      raise "No bikes available"
    else
      @bikes.pop
    end
  end

  def dock(bike_to_dock)
    if full?
      raise "No more space"
    else
      @bikes << bike_to_dock
    end
  end

private

  def full?
    @bikes.length >= $DEFAULT_CAPACITY
  end

  def empty?
    @bikes.length == 0
  end


end
