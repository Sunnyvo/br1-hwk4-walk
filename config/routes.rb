Rails.application.routes.draw do
  resources :line_items
  resources :orders
  #get "order" => "orders#show"
  post "carts/add"
  get "cart" => "carts#show"
  
 
  resources :food_items

  get "menu" => "menu#index"
  get "contact_us" => "home#contact_us"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
end
