class CreateTruck < ActiveRecord::Migration[5.1]
  def change
    create_table :trucks do |t|
      t.text :identifier, null:false
      t.references :current_gps_waypoint, null: true
    end
    add_index :trucks, :identifier, unique: true
add_foreign_key :trucks, :gps_waypoints, column: :current_gps_waypoint_id, primary_key: :id

  end
end
