require 'docking_station.rb'
require 'bike.rb'

describe DockingStation do
  let(:station) {DockingStation.new}


  it {should respond_to(:release_bike)}
  it 'should return a Bike class' do
    station.bikes = 1
    expect(station.release_bike).to be_an_instance_of(Bike)
  end
  it 'should return a working bike' do
    station.bikes = 1
    expect(station.release_bike.working?).to eq(true)
  end
  it {should respond_to(:dock).with(1).arguments}

  it 'should raise error if no bikes available' do
    station.bikes = 0
    expect{station.release_bike}.to raise_error("No bikes available")
  end

  it 'should raise error if trying to dock at full capacity' do
    station.bikes = 20
    expect{station.dock(Bike.new)}.to raise_error("No more space")
  end
end
