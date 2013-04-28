class PostsController < ApplicationController
  before_filter :authenticate_user!
  expose_decorated(:posts)

  def index
  end

  def show
  end

  def destroy
  end

  def update
  end

  def create
  end

end
