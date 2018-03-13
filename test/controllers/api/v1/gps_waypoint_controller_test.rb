require 'test_helper'

class Api::V1::GpsWaypointControllerTest < ActionDispatch::IntegrationTest
  test "should get add an new truck" do
    post api_v1_gps_url, as: :json, params: {gps_waypoint: {latitude: 10.99,longitude: 10.99,sent_at: "2018.01.01 00:00:00",vehicle_identifier: "newtruck"}}
    assert_response :success
    assert_not_nil Truck.find_by_identifier("newtruck"), "the new truck must be added"


  end

  

end
