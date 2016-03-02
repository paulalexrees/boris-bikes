require 'docking_station'


describe DockingStation do
  it {is_expected.to respond_to(:dock).with(1).argument}
  it {is_expected.to respond_to :dock}
  it {is_expected.to respond_to :bike}

  it 'expects instance of bike class' do
    bike1 = Bike.new
    subject.dock(bike1)
    expect(subject.release_bike).to be_a Bike
  end
  it 'returns a true if the bike is working' do
    bike = Bike.new
  expect(bike.working?).to be true
  end

  it 'dock the bike' do
  bike1 = Bike.new
  expect(subject.dock(bike1)).to be  bike1
  expect(subject.release_bike).to be bike1
  end

  it 'should return a bike if one is docked' do
    bike1 = Bike.new
    subject.dock(bike1)
    expect(subject.bike).to be bike1
  end
=begin
  it 'should raise an error if there are no bikes' do
    @docked_bikes = nil
    expect{subject.release_bike}.to raise_error("no bikes availabe")
  end

  it 'should release a bike if there are bikes' do
    @docked_bikes = Bike.new
    expect(subject.release_bike).to be @docked_bikes
  end
=end
end
