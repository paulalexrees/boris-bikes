require_relative 'bike'

class DockingStation

  def initialize
  @capacity = 3
  @docked_bikes = nil
  end

  def release_bike
    if @capacity > 0
      @capacity -= 1
      Bike.new

    else
      raise "no bikes available"
    end
  end

  def dock(bike_name)
    if @capacity >= 5
      raise 'station is full'
    else
    @capacity += 1
    @docked_bikes = bike_name
    end
  end

  def dock_status
    @docked_bikes == 0 ? "empty" : '#{@capacity} bikes'
  end

  def bike
    @docked_bikes
  end

end
