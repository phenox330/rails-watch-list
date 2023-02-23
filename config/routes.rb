Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "lists#index"
  resources :lists, only: %i[index show create new] do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: %i[destroy]
end

  # Defines the root path route ("/")
  # root "articles#index"
