require 'httparty'

class ApplicationController < ActionController::API
	def index
		url = "https://www.car2go.com/api/v2.1/vehicles?loc=seattle&oauth_consumer_key=#{ENV['CAR2GO_KEY']}&format=json"
		cars = HTTParty.get(url)
		render json: cars
	end
end
