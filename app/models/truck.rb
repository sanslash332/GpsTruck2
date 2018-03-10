class Truck < ApplicationRecord
has_many :gps_waypoints, dependent: :destroy, :class_name =>"GpsWaypoint"
belongs_to :current_gps_waypoint, optional: true, :class_name=>"GpsWaypoint"
end
