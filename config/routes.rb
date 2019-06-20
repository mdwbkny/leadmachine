Rails.application.routes.draw do
	root 'users#index'
	resources :contacts
	resources :users
end
