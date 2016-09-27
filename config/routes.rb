Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'trends#index'

 	get 'trends/api'
 	get '/trends/:id' => 'trends#show'
end
