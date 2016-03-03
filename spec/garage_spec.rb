require 'garage'

describe Garage do
  it 'should fix broken bikes' do
    subject.fixed
    expect(subject.to_fix).to all be_working
  end
end
