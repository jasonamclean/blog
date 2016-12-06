Rails.application.routes.draw do

	resources :posts

	root 'posts#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


  # get 'new', to: 'posts#new'

  # get 'show', to: 'posts#show'

  # get 'edit', to: 'posts#edit'

  # root 'posts#index'