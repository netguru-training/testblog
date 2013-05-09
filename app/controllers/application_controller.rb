class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :display_flash_notice

  private

  def display_flash_notice
    flash[:notice] = "this is a test project for netguru"
  end

end
