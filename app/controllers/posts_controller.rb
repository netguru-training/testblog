class PostsController < ApplicationController
  before_filter :authenticate_user!
  expose_decorated(:posts)
  expose_decorated(:post)

  def index
  end

  def new
  end

  def show
  end

  def mark_archived
  end

  def create
    if post.save
      redirect_to action: :index
    else
      render :new
    end
  end

end
