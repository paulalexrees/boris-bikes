
require 'van'

describe Van do
  it 'should move broken bikes to the garage' do
    subject.to_garage
    garage = Garage.new
    expect(garage.to_fix).to all be_not_working
  end
end
=begin
  it 'should not move working bikes to garage' do
    subject.van_to_garage
    expect(subject.docked_bikes).to all be_working
  end

  it "should move fixed bikes to the docking station" do
    subject.van_to_dock
    expect(subject.docked_bikes).to all be_working
  end
end
=end
