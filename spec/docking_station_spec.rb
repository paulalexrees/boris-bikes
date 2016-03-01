require 'docking_station.rb'
require 'bike.rb'

describe DockingStation do
  it {should respond_to(:release_bike)}
  it 'should return a Bike class' do
    expect(DockingStation.new.release_bike).to be_an_instance_of(Bike)
  end
  it 'should return a working bike' do
    expect(DockingStation.new.release_bike.working?).to eq(true) 
  end
end
