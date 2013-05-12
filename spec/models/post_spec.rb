require 'spec_helper'

describe Post do
  describe "mongoid_taggable gem integration" do
    it "is configured properly, when #tags= changes #tags_array content" do
      post = build(:post)
      expect { post.tags = "tag1,tag2" }.to change { post.tags_array }.to(["tag1", "tag2"])
    end
  end
end
