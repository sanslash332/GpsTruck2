class TruckController < ApplicationController
#get /show
# show the list with all trucks, and put it on the map using the last waypoint
  def show
@trucks = Truck.all
#filter the trucks only with waypoints
trucksWithGps=@trucks.select do |t|
t.current_gps_waypoint
end
#puts trucksWithGps.size

#build json for the map lib
@gpsPoints = Gmaps4rails.build_markers(trucksWithGps) do |t, m|
m.lat t.current_gps_waypoint.latitude
m.lng t.current_gps_waypoint.longitude
m.infowindow t.identifier
end


  end
end
