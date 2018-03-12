# GpsTruck2
a small rails test.

Using underscore-rails,  sucker_punch as a job queue, and gmaps4rails for display maps.
https://github.com/brandonhilkert/sucker_punch/

https://github.com/apneadiving/Google-Maps-for-Rails

https://github.com/rweng/underscore-rails

# endpoints:

## get /show

Display the list of the trucks, with the last waypoint that was registered for them (or none if don't have one yet) and the map with markers for each truck

## POST /api/v1/gps

Receibe a JSON with the data of a new GpsWaypoint:
{
latitude: 99.99,
longitude: 99.99,
sent_at: "2018.01.01 00:00:00",
vehicle_identifier: "abcabcXXX"
}

If the data is valid, the aplication save it and asosiate the waypoint with the corresponding truck. if the identifier is a new identifier, the system creates a new truck with that id.

This action occurs as an async job.

