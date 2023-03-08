Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  get 'restaurants/index'
  get 'restaurants/create'
  get 'restaurants/new'
  get 'restaurants/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants, except: %i[edit update destroy] do
    resources :reviews, only: %i[new create]
  end
end
