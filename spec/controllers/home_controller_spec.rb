require 'spec_helper'

describe HomeController do

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end

    it "shows flash notice" do
      controller.should_receive :display_flash_notice
      get 'index'
    end
  end

end
