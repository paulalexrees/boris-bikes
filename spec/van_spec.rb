require 'van.rb'
require 'docking_station.rb'

describe Van do

  it {should respond_to(:check_broken).with(1).argument}
  it {should respond_to(:take_broken).with(1).argument}

  describe "#check_broken" do
    # it "should get an array from the station" do
    #   station = DockingStation.new
    #   expect(subject.check_broken(station)).to eq(station.bikes)
    # end

    it "should return T/F depending on the bikes" do
      station = DockingStation.new
      station.dock Bike.new, false
      expect(subject.check_broken(station)).to eq(true)
    end
  end

  describe "#take_broken" do
    it "should take a broken bike from the station" do
      station = DockingStation.new
      bike = Bike.new
      station.dock(bike, false)
      expect(subject.take_broken(station)).to eq(bike)
    end

    it "reveals there are no broken bikes to take" do
      station = DockingStation.new
      bike = Bike.new
      station.dock(bike)
      expect(subject.take_broken(station)).to eq("No broken bikes.")
    end

  end

end
