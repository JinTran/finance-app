Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#index'

  # devise_for :users, :controllers => { :registrations => 'user/registrations'}
  devise_for :users, :controllers => { :registrations => "user/registrations" }

  resources :users,only: [:show]
  resources :friendships

  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stocks', to: 'stocks#search'
  get 'my_friends', to: 'users#my_friends'
  get  'search_friends', to: 'users#search'
  post 'add_friend',to: 'users#add_friend'

  resources :user_stocks, only: [:create, :destroy]


end