module API
  module V1

class ApikeyController < ApplicationController

	def create

		@token = Api_key.generate_access_token

		render json: @token
	end
end
end 

end