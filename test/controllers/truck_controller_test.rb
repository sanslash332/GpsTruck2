require 'test_helper'

class TruckControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get show_url
    assert_response :success
  end

end
