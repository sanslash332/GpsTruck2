class AddTruckToGpsWaypoint < ActiveRecord::Migration[5.1]
  def change
    add_reference :gps_waypoints, :truck, foreign_key: true
  end
end
