Rails.application.routes.draw do
  resources :producto3s
  resources :producto2s
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/", to: "producto3s#index"
end
