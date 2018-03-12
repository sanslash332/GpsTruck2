class TruckController < ApplicationController
  def show
@trucks = Truck.all
trucksWithGps=@trucks.select do |t|
t.current_gps_waypoint
end
#puts trucksWithGps.size

@gpsPoints = Gmaps4rails.build_markers(trucksWithGps) do |t, m|
m.lat t.current_gps_waypoint.latitude
m.lng t.current_gps_waypoint.longitude
m.infowindow t.identifier
end


  end
end
