require 'test_helper'

class GpsWaypointTest < ActiveSupport::TestCase
  test "can't save a gps without all data" do
g=GpsWaypoint.new
assert_not g.save, "need all parameters"
g.latitude=10.10
assert_not g.save, "need all parameters"
g.longitude=10.10
assert_not g.save, "need all parameters"
g.sent_at = "2018.01.01 00:00:00"
assert_not g.save, "need all parameters"
g.truck=Truck.first
assert g.save, "need all parameters"

end

end
