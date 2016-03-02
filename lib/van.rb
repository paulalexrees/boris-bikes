require_relative 'docking_station'
require_relative 'garage'

class Van
  attr_accessor :van_load

  def initialize
    @van_load = []
  end

  def check_broken(station)
    bike_list = station.bikes
    bike_list.any? {|bike| !bike.working?}
  end

  def take_broken(station)
    if check_broken(station)
      @van_load = station.bikes.select {|bike| !bike.working?}
      station.bikes.reject! {|bike| !bike.working?}
      @van_load
    else
      "No broken bikes."
    end
  end

  def deliver(garage)
    raise "Nothing to deliver!" if @van_load.empty?
    @van_load.each{|bike| garage.bikes << bike}
    @van_load = []
  end

  def collect(garage)
    raise "No bikes to collect!" if garage.bikes.empty?
    garage.bikes.each{|bike|
      bike.working = true
      @van_load << bike}
    garage.bikes = []
    @van_load
  end

end
