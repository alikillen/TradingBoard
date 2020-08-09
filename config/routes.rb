Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "listings#index"

  # scaffold/resources?

  resources :listings

  get "/profile/listings", to: "listings#view", as: "my_listings"

  get "listings/category/:category", to: "listings#get_listing_by_cat", as: "category"

  
  # resources :profiles

  #get "/payments/success", to: "payments#success"

  #post "/payments/webhook", to: "payments#webhook"

  # any path that is not defined in the app
  # get "*path", to:"pages#not_found"

  # get "/404", to: "errors#not_found"

end
