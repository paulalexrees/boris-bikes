require 'docking_station.rb'
require 'bike.rb'

describe DockingStation do
  # let(:subject) {Dockingsubject.new(20)}

  it {should respond_to(:release_bike)}
  it {should respond_to(:dock).with(1).argument}

  describe "#release_bike" do
    it 'should return a Bike class' do
      subject.dock(Bike.new)
      expect(subject.release_bike).to be_an_instance_of(Bike)
    end
    it 'should return a working bike if there are bikes' do
      subject.dock(Bike.new)
      expect(subject.release_bike.working?).to eq(true)
    end
    it 'should raise error if no bikes available' do
      #subject.bikes.length = 0
      expect{subject.release_bike}.to raise_error("No bikes available") if subject.bikes.length == 0
    end
  end

  describe "#dock" do
    it 'should raise error if trying to dock at full capacity' do
      expect{subject.dock(Bike.new)}.to raise_error("No more space") if subject.bikes.length >= subject.capacity
    end
  end

  describe "#new" do
    it "changes the capacity to a number given" do
      station = DockingStation.new(15)
      expect(station.capacity).to eq(15)
    end
  end

end
