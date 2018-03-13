class GpsWaypointJob
  include SuckerPunch::Job

  def perform(*args)
puts "la otra version"
puts args[0]
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
@truck.current_gps_waypoint=@gps
if(@gps.valid?)
@gps.save
@truck.save


end

end
end
