require 'test_helper'

class Api::V1::GpsWaypointControllerTest < ActionDispatch::IntegrationTest
  test "should get add" do
    get api_v1_gps_waypoint_add_url
    assert_response :success
  end

  test "should get list" do
    get api_v1_gps_waypoint_list_url
    assert_response :success
  end

end
