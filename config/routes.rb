Rails.application.routes.draw do
	root to: 'home#top'
	get 'home/about'
	devise_for :users
	resources :books
	resources :users,only: [:show,:index,:edit,:update] do
		member do
			get :following, :followers
		end
	end

	resources :relationships, only: [:create, :destroy]


end
