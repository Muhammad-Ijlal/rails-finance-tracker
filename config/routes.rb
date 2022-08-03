Rails.application.routes.draw do
  root "welcome#index"
  get 'my_portfolio', to: 'users#my_portfolio'
  post 'search_stock', to: 'stocks#search'
  get 'users/my_portfolio'
  devise_for :users
  resources :user_stocks, only: [:create, :destroy]
end
