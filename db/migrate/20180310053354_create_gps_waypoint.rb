class CreateGpsWaypoint < ActiveRecord::Migration[5.1]
  def change
    create_table :gps_waypoints do |t|
      t.decimal :latitude
      t.decimal :longitude
      t.datetime :sent_at
    end
  end
end
