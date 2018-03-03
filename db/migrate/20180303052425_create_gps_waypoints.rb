class CreateGpsWaypoints < ActiveRecord::Migration[5.1]
  def change
    create_table :gps_waypoints do |t|
      t.decimal :latitude
      t.decimal :longitude
      t.datetime :sentAt
      t.references :truck, foreign_key: true

      t.timestamps
    end
  end
end
