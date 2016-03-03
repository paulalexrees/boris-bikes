require 'docking_station'


describe DockingStation do

  it 'expects capacity to be modifiable by the user' do
    station = DockingStation.new(5)
    expect(station.capacity).to eq 5
  end

  let(:bike) { double :bike }
  it 'expects instance of bike class' do
    bike = double(:bike, working: true)
    subject.dock bike
    expect(subject.release_bike).to eq bike
  end

  it 'dock the bike' do
    expect(subject.dock bike).to eq bike
  end

  it 'should return a bike if one is docked' do
    subject.dock bike
    expect(subject.bike).to be bike
  end

  it 'should raise an error if there are no bikes' do
    expect{subject.release_bike while true}.to raise_error(RuntimeError)
  end

  it 'should raise an error if station is full' do
    expect{subject.dock double(:bike) while true}.to raise_error(RuntimeError)
  end

end
