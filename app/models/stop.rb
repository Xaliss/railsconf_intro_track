class Stop < ActiveRecord::Base
  attr_accessible :location_type, :parent_station, :stop_code, :stop_id, :stop_lat, :stop_lon, :stop_name
end
