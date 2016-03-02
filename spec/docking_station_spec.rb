require 'docking_station'


describe DockingStation do
  it {is_expected.to respond_to :release_bike}
  it {is_expected.to respond_to(:dock).with(1).argument}
  it {is_expected.to respond_to :dock}
  it {is_expected.to respond_to :bike}

  it 'expects instance of bike class' do
    expect(subject.release_bike).to be_a Bike
  end
  it 'returns a true if the bike is working' do
    bike = subject.release_bike
  expect(bike.working?).to be true
  end

  it 'dock the bike' do
  param = Bike.new
  expect(subject.dock(param)).to be  param
  end

  it 
end
