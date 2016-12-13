Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :restaurants
  resources :orders
  resources :line_items
  post '/complete_order', to: 'orders#complete'
  root 'site#index'
end
