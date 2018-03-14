class GpsWaypointJob
  include SuckerPunch::Job

#background method that process the add of a new gps wapoint, and new truck if necesary
  def perform(*args)
args=args[0]
@truck = Truck.find_by_identifier(args[:vehicle_identifier])
if !@truck
@truck=Truck.new({identifier: args[:vehicle_identifier]})


end

@gps = GpsWaypoint.new
@gps.truck=@truck
@gps.latitude=args[:latitude]
@gps.longitude=args[:longitude]
@gps.sent_at = args[:sent_at]
if @truck.current_gps_waypoint
if @truck.current_gps_waypoint.sent_at <= @gps.sent_at
@truck.current_gps_waypoint=@gps
end

else

@truck.current_gps_waypoint=@gps
end
if(@gps.valid?)
@gps.save
@truck.save


end

end
end
