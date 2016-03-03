class Van

  def collect_from_dock(sucky_bikes)
    sucky_bikes
  end

  def return_to_dock(fixed_bikes)
    fixed_bikes
  end

end



   # since classess cannot access each other directly, we need a method within van and docking station that can make requests across each other and receive each other's inputs and outputs
