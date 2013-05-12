require 'spec_helper'

describe PostDecorator do
  let(:decorated_post) { PostDecorator.new(title: "Game of Thrones III") }

  describe ".friendly_title" do
    it "returns title where words are downcased and separated by '-' sign" do
      decorated_post.friendly_title.should eq "game-of-thrones-iii"
    end
  end
end
