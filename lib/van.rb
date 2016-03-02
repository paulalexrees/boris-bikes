require_relative 'docking_station'

class Van

  def check_broken(station)
    bike_list = station.bikes
    bike_list.any? {|bike| !bike.working?}
  end

  def take_broken(station)
    if check_broken(station)
      station.bikes.pop
    else
      "No broken bikes."
    end
  end

end
