require_relative 'bike'
require_relative 'van'

class Garage

  @fixed_bikes = []

  def fixed(sucky_bikes)
    sucky_bikes.map { |bike| bike.fix }
  end

  def to_return(ok_bikes)
    @fixed_bikes = ok_bikes
  end
end
