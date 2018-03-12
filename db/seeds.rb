# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
trucks=Truck.create([{identifier: "123123"},{identifier: "abcabc"},{identifier: "abc123"},{identifier: "abcabcqsa"}])
gps = GpsWaypoint.create({latitude: 30.10,longitude: 10.10,sent_at: DateTime.now,		truck: trucks[0]})
trucks[0].current_gps_waypoint=gps
trucks[0].save
