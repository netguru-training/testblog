require 'spec_helper'

describe User do
  it { should have_field(:nickname) }
  it { should validate_uniqueness_of(:nickname) }

  describe "#to_s" do
    it "returns name if nickname isn't set" do
      user = User.new(name: "john doe")
      user.to_s.should eq "john doe"
    end

    it "returns nickname if it's set" do
      user = User.new(name: "john doe", nickname: "rambo")
      user.to_s.should eq "rambo"
    end
  end

end
