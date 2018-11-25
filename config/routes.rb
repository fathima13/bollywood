Rails.application.routes.draw do
  get 'movies/index'

	root 'actors#index'
  	resources :actors do
  		resources :movies
  	end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
