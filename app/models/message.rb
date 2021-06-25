class Message < ApplicationRecord
	default_scope { order(created_at: :desc) }

	def self.get_messages
		return self.limit(100)
	end
end
