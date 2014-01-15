require 'spec_helper'

describe Post do
  it { should have_many(:comments) } # this is very important

  describe "mongoid_taggable gem integration" do
    it "is configured properly, when #tags= changes #tags_array content" do
      post = build(:post)
      expect { post.tags = "tag1,tag2" }.to change { post.tags_array }.to(["tag1", "tag2"])
    end
  end

  describe "#hotness" do
    let(:post) { build(:post) }

    it "returns 3 if post was created no longer than 24 hours ago" do
      post.stub(created_at: 1.hour.ago)
      post.hotness.should eq 3
    end

    it "returns 2 if post was created between 24 and 72 hours ago" do
      post.stub(created_at: 36.hours.ago)
      post.hotness.should eq 2
    end

    it "returns 1 if post was created between 3 to 7 days ago" do
      post.stub(created_at: 6.days.ago)
      post.hotness.should eq 1
    end

    it "returns 0 if post is older than 7 days" do
      post.stub(created_at: 10.days.ago)
      post.hotness.should eq 0
    end

    it "is incremented by 1 when post has at least 3 comments" do
      comments = [double("commment1"), double("commment2"), double("commment2")]
      post.stub(created_at: 1.hour.ago)
      expect { post.stub(comments: comments) }.to change { post.hotness }.by(1)
    end

  end
end
