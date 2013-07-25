require 'spec_helper'

describe Comment do
  it { should belong_to(:user) }
  it { should belong_to(:post) }
  it { should have_field(:body) }

  let(:user) { create(:user) }
  let(:comment) { create(:comment, user: user) }
  let(:user2) { create(:user) }
  let(:user3) { create(:user) }
  let(:user4) { create(:user) }

  it "should be market as abusive when has 3 negative votes" do
    expect {
          3.times { create(:vote, value: -1, comment: comment) }
        }.to change(comment, :abusive).from(false).to(true)
  end

end
