Rails.application.routes.draw do
	root :to => 'home#top'
	get 'books' => 'books#index', as: 'books'
	resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
