require_relative 'bike'

class DockingStation
  def initialize
    @bikes = []
  end
  attr_accessor 'bikes'

  def release_bike
    if @bikes.length == 0
      raise "No bikes available"
    else
      @bikes.pop
    end
  end

  def dock(bike_to_dock)
    if @bikes.length >= 20
      raise "No more space"
    else
      @bikes << bike_to_dock
    end
  end

end
