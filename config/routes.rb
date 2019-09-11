Rails.application.routes.draw do
  get "vehicles" => "vehicles#index"
  get "vehicles/:id" => "vehicles#show", as: "vehicle"
  root "vehicles#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
