require_relative 'bike'

class DockingStation

  @docked_bikes = ''

  def release_bike
    Bike.new
  end

  def dock(bike_name)
    @docked_bikes = bike_name
  end

  def dock_status
    !(@docked_bikes.empty?)
  end

  def bike
    @docked_bikes
  end

end