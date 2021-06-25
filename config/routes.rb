Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
  	post '/create_message', to: 'messages#create_message'
  	get '/get_messages', to: 'messages#get_messages'
  end
end
