module Api
	class MessagesController < ApiController
		
		def create_message
			name = params[:name]
			message = params[:message]
			m = Message.new(
				name: name,
				message: message,
			)
			if m.valid? && m.save
				render json: json_response(response: Message.get_messages)
				return
			end

			render json: json_response(
				response: Message.get_messages,
				errors: m.errors.to_s
			)
		end

		def get_messages
			render json: json_response(response: Message.get_messages)
		end
	end
end
