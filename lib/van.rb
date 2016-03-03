require_relative 'bike'

class Van

  def take_from_dock(sucky_bikes)
    sucky_bikes
  end

  def take_to_dock(ok_bikes)
    ok_bikes
  end

end



   # since classess cannot access each other directly, we need a method within van and docking station that can make requests across each other and receive each other's inputs and outputs
