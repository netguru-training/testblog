class HomeController < ApplicationController
  before_filter :display_flash_notice

  def index
    @users = User.all
  end

  private

  def display_flash_notice
    flash[:notice] = "this is a test project for netguru"
  end
end
