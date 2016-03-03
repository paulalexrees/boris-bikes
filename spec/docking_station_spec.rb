require 'docking_station'


describe DockingStation do
  it {is_expected.to respond_to(:dock).with(1).argument}
  it {is_expected.to respond_to :dock}
  it {is_expected.to respond_to :bike}

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
  #it 'returns a true if the bike is working' do
  #  bike = Bike.new
  #expect(bike.working?).to be true
  #end

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
    expect{
      while true
        subject.dock double(:bike)
      end
      }.to raise_error(RuntimeError)
  end
end
=begin
  it 'should release a bike if there are bikes' do
    @docked_bikes = Bike.new
    expect(subject.release_bike).to be @docked_bikes
  end
=end
