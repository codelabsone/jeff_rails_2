Rails.application.routes.draw do
  get 'tune/up'

  get "search" => "search#show"

  resources :filtrations
  root "vehicles#index"
  resources :vehicles
 
  resources :trade_in
  get "trade_in" => "trade_in#index"
end
