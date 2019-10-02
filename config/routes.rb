Rails.application.routes.draw do
  get "search" => "search#show"

  resources :filtrations
  root "vehicles#index"
  resources :vehicles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :trade_in
  get "trade_in#index"
end
