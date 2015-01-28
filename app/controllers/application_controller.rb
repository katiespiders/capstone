require 'httparty'

class ApplicationController < ActionController::API
	def index
		render json: get_cars
	end

	private
	
		def origin
			{ latitude: 47.687165,
				longitude: -122.352925 }
		end

		def destination 
			{ latitude: 47.606968,
				longitude: -122.305192 }
		end
		
		def get_cars
			url = "https://www.car2go.com/api/v2.1/vehicles?loc=seattle&oauth_consumer_key=#{ENV['CAR2GO_KEY']}&format=json"
			HTTParty.get(url)
		end

		def get_directions
			
		end
end
