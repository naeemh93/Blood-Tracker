Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "user/registrations" }
  root 'welcome#index'
  get 'search_stocks', to: 'stocks#search'
  resources :user_stocks, only: [:create, :destroy]
  resources :glucose_levels
  resources :users, only: [:show]
  resources :friendships
  get 'my_readings', to: 'users#my_readings'
  get 'search_friends', to: 'users#search'
  post 'add_friend', to: "users#add_friend"
end
