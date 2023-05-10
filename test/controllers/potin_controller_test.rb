require "test_helper"

class PotinControllerTest < ActionDispatch::IntegrationTest
  test "should get potin" do
    get potin_potin_url
    assert_response :success
  end
end
