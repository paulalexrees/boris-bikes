require_relative 'bike'

class DockingStation
  def initialize
    @bikes = 0
  end
  attr_accessor 'bikes'

  def release_bike
    if @bikes == 0
      raise "No bikes available"
    else
      @bikes -= 1
      Bike.new
    end
  end

  def dock(bike_to_dock)
    if @bikes >= 20
      raise "No more space"
    else
      @bikes += 1
    end
  end

end

station = DockingStation.new
20.times{
  station.dock Bike.new
}
