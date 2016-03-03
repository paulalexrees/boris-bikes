
require 'van'

describe Van do
  it 'should move broken bikes to the garage' do
    station = DockingStation.new
    sucky_bikes = station.bike_to_van
    expect(subject.take_from_dock sucky_bikes).to all be_not_working
  end


  it "should move fixed bikes to the docking station" do
    station = DockingStation.new
    sucky_bikes = station.bike_to_van
    sucky_bike = subject.take_from_dock sucky_bikes
    garage = Garage.new
    ok_bike = garage.to_return(sucky_bike)
    expect(subject.take_to_dock ok_bike).to all be_working
  end
end
