require 'bike'

describe Bike do
  it { expect(subject.working).to be true }
  describe "#report_broken" do
    it "reports the bike as broken" do
      expect(subject.report_broken).to eq false
    end
  end

end
