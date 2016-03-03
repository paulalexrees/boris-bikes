require_relative 'bike'
require_relative 'docking_station'

class Van
  @broken_bikes = []
  @fixed_bikes = []
  def save_broken_bikes(bike)
    @broken_bikes << bike if !bike.working?
  end

  def take_from_dock(sucky_bikes)
    @broken_bikes = sucky_bikes
  end

  def take_to_dock(ok_bikes)
    @fixed_bikes = ok_bikes
  end


end



   # since classess cannot access eachother directly, we need a method within van and docking station that can make requests across eachother and recieve eachother's inputs and outputs
