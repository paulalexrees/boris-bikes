require 'garage'

describe Garage do
  describe "#fixed" do
    it 'should call fix method each broken bike' do
      subject.broken_storage.each {|bike| expect(bike).to receive(:fix)}
    end
  end
end
