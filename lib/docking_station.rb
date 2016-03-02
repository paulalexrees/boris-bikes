require_relative 'bike'

Default_capacity = 20
class DockingStation

  attr_accessor :Default_capacity


  def initialize

  @docked_bikes = []
  end

  def release_bike
    if empty?
      raise "no bikes available"
    else
      @docked_bikes.pop
    end
  end

  def dock(bike_name)
    if full?
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

  private

  def full?
    @docked_bikes.length == Default_capacity ? true : false
  end

  def empty?
    @docked_bikes.length == 0
  end
end
