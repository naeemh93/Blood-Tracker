Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "user/registrations" }
  root 'welcome#index'
  resources :glucose_levels
  resources :users, only: [:show]
  get 'my_readings', to: 'users#my_readings'
  get 'search', to: 'users#search'

end
