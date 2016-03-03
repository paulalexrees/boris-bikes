require 'garage'

describe Garage do
  it 'should fix broken bikes' do
    bike = Bike.new
    bike.report_broken
    sucky_bikes = [bike]
    subject.fixed(sucky_bikes)
    expect(sucky_bikes).to all be_working
  end
end
