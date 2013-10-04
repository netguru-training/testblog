require 'spec_helper'

describe PostsController do
  let(:user) { create(:user) }

  before do
    request.env['warden'].stub authenticate!: user
    controller.stub current_user: user
  end

  describe "GET 'index'" do
    it "doesn't show flash notice" do
      controller.should_not_receive :display_flash_notice
      get 'index'
    end

    it "doesn't show archived posts" do
      post1 = create(:post)
      post2 = create(:post, archived: true)

      get :index
      controller.posts.to_a.should eq [post1]
    end

    it "assigns a cloud tag for existing posts" do
      post1 = create(:post, tags: "foo,bar")
      post2 = create(:post, tags: "foo")
      get :index

      tag_cloud = [['bar', 1.0], ['foo', 2.0]]

      controller.tag_cloud.should eq tag_cloud
    end
  end

  describe "POST mark_archived" do
    let(:blog_post) { create(:post) }

    it "changes archived attribute for post" do
      expect {
        post :mark_archived, id: blog_post
        }.to change { blog_post.reload.archived }.to(true)
    end
  end


  describe "GET show" do
    let(:post)  { create(:post, user: user) }
    let(:user2) { create(:user) }
    let(:comment) { create(:comment, user: user2, post: post) }

    before do
      get :show, id: post.id
    end

    it "exposes posts" do
      controller.posts.should include post
    end

    it "exposes post" do
      controller.post.should eq post
    end

    it "exposes posts comments" do
      controller.comments.should include comment
    end

    context "comment is abusive" do

      before do
        comment.update_attribute(:abusive, true)
      end

      context "user is an author of the post" do
        it "should be listed on comments list" do
          controller.comments.should include comment
        end
      end

      context "user is not an author of the post" do
        before do
          request.env['warden'].stub authenticate!: user2
          controller.stub current_user: user2

          get :show, id: post.id
        end

        it "should not be listed on comments list" do
          controller.comments.should_not include comment
        end
      end
    end
  end


  describe "DELETE destroy" do

    it "is possible only to own posts" do
      own_blog_post = create(:post, user: user)
      expect {
        delete :destroy, id: own_blog_post.id
      }.to change{ Post.count }.by(-1)
    end

    it "isn't possible for other user posts" do
      other_user_post = create(:post)
      expect {
        delete :destroy, id: other_user_post.id
      }.to_not change{ Post.count }
    end
  end

end
