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
    elsif !@bikes.last.working?
      raise "Bike is broken"
    else
      @bikes.pop
    end
  end

  def dock(bike_to_dock, state=true)
    if full?
      raise "No more space"
    else
      bike_to_dock.working = state
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
