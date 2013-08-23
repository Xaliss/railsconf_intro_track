class CreateStopTimes < ActiveRecord::Migration
  def change
    create_table :stop_times do |t|
      t.integer :trip_id
      t.integer :stop_id
      t.integer :stop_sequence
      t.string :arrival_time
      t.string :departure_time
      t.string :stop_headsign
      t.string :pickup_type
      t.string :drop_off_type
      t.string :shape_dist_traveled

      t.timestamps
    end
  end
end
