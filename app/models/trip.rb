class Trip
  include Mongoid::Document
	field :origin_lat, type: Float
	field :origin_long, type: Float
	field :dest_lat, type: Float
	field :dest_long, type: Float
end
