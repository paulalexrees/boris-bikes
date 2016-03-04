require 'bike'

describe Bike do
  it { expect(subject.working).to be true }
  describe "#report_broken" do
    it "reports the bike as broken" do
      expect(subject.report_broken).to eq false
    end
  end

  describe "#fix" do
    it "fixes broken bikes" do
      subject.report_broken
      expect(subject.fix).to eq true
    end
  end
end
