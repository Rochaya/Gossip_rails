require "test_helper"

class CreateGossipControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get create_gossip_show_url
    assert_response :success
  end
end
