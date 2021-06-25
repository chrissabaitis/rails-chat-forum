class Api::ApiController < ApplicationController
	def json_response(response:, errors:nil)
		return {data: response, errors: errors}
	end
end
