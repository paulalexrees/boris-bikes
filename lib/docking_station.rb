require_relative 'bike'

class DockingStation
  attr_accessor 'bikes', 'capacity'
  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

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
    @bikes.length >= @capacity
  end

  def empty?
    @bikes.length == 0
  end


end
