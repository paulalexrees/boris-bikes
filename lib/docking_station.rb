require_relative 'bike'

class DockingStation

  def initialize
  @capacity = 20
  @docked_bikes = []
  end

  def release_bike
    if @docked_bikes.length > 0
      @docked_bikes.pop
    else
      raise "no bikes available"
    end
  end

  def dock(bike_name)
    if @docked_bikes.length >= @capacity
      raise 'station is full'
    else
    @docked_bikes << bike_name
    bike_name
    end
  end

  def dock_status
    @docked_bikes == 0 ? "empty" : "#{@docked_bikes.length} bikes"
  end

  def bike
    @docked_bikes.last
  end

end
