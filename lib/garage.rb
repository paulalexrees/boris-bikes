require_relative 'bike'
require_relative 'van'

class Garage

  def fixed(sucky_bikes)
    sucky_bikes.map { |bike| bike.fix }
  end
  
end
