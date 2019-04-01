Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'helps#home'
  resources :categories
  resources :genres
  resources :tames
  resources :post_helps, only: [:new, :create, :index, :show, :destroy] do
  	  resource :favorites, only: [:create, :destroy]
      resource :post_comments, only: [:create, :destroy]
  end
end
