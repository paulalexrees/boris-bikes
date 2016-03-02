require_relative 'bike'

class DockingStation

  attr_reader :dock_set


  def initialize
    @dock_set = []
  end

  def release_bike
    Bike.new
  end

  def dock(bike_name)
     bike_name
  end

  def dock_status
    @dock_status.empty?
  end

  def bike
  end

end