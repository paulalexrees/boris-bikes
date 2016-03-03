require 'garage'

describe Garage do
  it 'should fix broken bikes' do
    sucky_bikes = [Bike.new]
    subject.fixed(sucky_bikes)
    expect(sucky_bikes).to all be_working
  end
end
