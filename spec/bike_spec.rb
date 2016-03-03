require 'bike'

describe Bike do
  it {is_expected.to respond_to :working?}
  it { expect(subject.working?).to be true }
  it {is_expected.to respond_to :report_broken}
  describe "#report_broken" do
    it "reports the bike as broken" do
      expect(subject.report_broken).to eq false
    end
  end

end
