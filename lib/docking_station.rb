require_relative 'bike'

class DockingStation

  @docked_bikes = nil


  def release_bike
    if @docked_bikes != nil
      @docked_bikes
    else
      raise "no bikes available"
    end
  end

  def dock(bike_name)
    @docked_bikes = bike_name
  end

  def dock_status
    @docked_bikes == nil ? "empty" : "has bike"
  end

  def bike
    @docked_bikes
  end

end
