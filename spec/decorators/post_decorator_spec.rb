require 'spec_helper'

describe PostDecorator do
  let(:post) { build(:post, title: "Game of Thrones III", created_at: '2013-07-21 14:10:00') }
  let(:decorated_post) { PostDecorator.decorate(post) }

  describe ".friendly_title" do
    it "returns title where words are downcased and separated by '-' sign" do
      decorated_post.friendly_title.should eq "game-of-thrones-iii"
    end
  end

  describe ".friendly_date" do
    it "should return date specific format" do
      decorated_post.friendly_date.should eq "21/07/2013 : 14:10"
    end
  end
end
