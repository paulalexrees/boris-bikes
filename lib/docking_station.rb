require_relative 'bike'

class DockingStation

  def initialize
  @docked_bikes = Bike.new
  end

  def release_bike
    if @docked_bikes != nil
      @docked_bikes = nil
      Bike.new

    else
      raise "no bikes available"
    end
  end

  def dock(bike_name)
   # if @docked_bikes != nil
    #  raise 'station is full'
    #else
    @docked_bikes = bike_name
    #end
  end

  def dock_status
    @docked_bikes == nil ? "empty" : "has bike"
  end

  def bike
    @docked_bikes
  end

end
