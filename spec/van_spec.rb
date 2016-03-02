require 'van.rb'
require 'docking_station.rb'
require 'garage'

describe Van do

  it {should respond_to(:check_broken).with(1).argument}
  it {should respond_to(:take_broken).with(1).argument}
  it {should respond_to(:deliver).with(1).argument}


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

        it "should remove broken bikes from the station" do
          station = DockingStation.new
          3.times { station.dock Bike.new, false }
          3.times { station.dock Bike.new}
          Van.new.take_broken station
          expect(subject.check_broken(station)).to eq(false)
        end

  end

  describe "#take_broken" do
    it "should take a broken bike from the station" do
      station = DockingStation.new
      bike = Bike.new
      station.dock(bike, false)
      expect(subject.take_broken(station)).to eq([bike])
    end

    it "reveals there are no broken bikes to take" do
      station = DockingStation.new
      bike = Bike.new
      station.dock(bike)
      expect(subject.take_broken(station)).to eq("No broken bikes.")
    end

    it "returns the number of broken bikes in the stataion" do
      station = DockingStation.new
      3.times { station.dock Bike.new, false }
      expect(subject.take_broken(station).length).to eq(3)
    end
  end

  describe "#deliver" do
    it "should raise an error if the van is empty" do
      garage = Garage.new
      expect{subject.deliver(garage)}.to raise_error("Nothing to deliver!")
    end

    it "should move broken bikes to garage" do
      van = Van.new
      station = DockingStation.new
      3.times { station.dock Bike.new, false }
      3.times { station.dock Bike.new}
      van.take_broken station
      init_load = van.van_load
      garage = Garage.new
      van.deliver(garage)
      expect(garage.bikes).to eq(init_load)
    end

    it "should move broken bikes to garage" do
      van = Van.new
      station = DockingStation.new
      3.times { station.dock Bike.new, false }
      3.times { station.dock Bike.new}
      van.take_broken station
      garage = Garage.new
      van.deliver(garage)
      expect(van.van_load).to eq([])
    end


  end


end
