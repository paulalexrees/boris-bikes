require 'docking_station.rb'
require 'bike.rb'

describe DockingStation do
  let(:station) {DockingStation.new}

  it {should respond_to(:release_bike)}
  it {should respond_to(:dock).with(1).arguments}

describe "#release_bike" do
  it 'should return a Bike class' do
    station.dock(Bike.new)
    expect(station.release_bike).to be_an_instance_of(Bike)
  end
  it 'should return a working bike if there are bikes' do
    station.dock(Bike.new)
    expect(station.release_bike.working?).to eq(true)
  end
  it 'should raise error if no bikes available' do
    #station.bikes.length = 0
    expect{station.release_bike}.to raise_error("No bikes available") if station.bikes.length == 0
  end
end

describe "#dock" do
  it 'should raise error if trying to dock at full capacity' do
    expect{station.dock(Bike.new)}.to raise_error("No more space") if station.bikes.length >= 20
  end
end
end
