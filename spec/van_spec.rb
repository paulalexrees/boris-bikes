require 'van'

describe Van do
  it 'should move broken bikes to the garage' do
    station = DockingStation.new
    sucky_bikes = station.bike_to_van
    expect(subject.take_from_dock sucky_bikes).to all be_not_working
  end


  it "should move fixed bikes to the docking station" do
    station = DockingStation.new
    sucky_bikes = subject.take_from_dock(station.bike_to_van)
    garage = Garage.new
    ok_bike = garage.fixed(sucky_bikes)
    expect(subject.take_to_dock ok_bike).to all be_working
  end
end
