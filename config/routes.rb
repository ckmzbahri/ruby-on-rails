Rails.application.routes.draw do
  resources :uruns
  resources :markas
  get 'uruns/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'markas#index' 
  # Defines the root path route ("/")
  # root "articles#index"
end
