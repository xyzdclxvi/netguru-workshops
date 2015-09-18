Rails.application.routes.draw do
  

  devise_for :users
  resources :categories do
    resources :products do
      resources :reviews
    end
  end
  
  resources :users, only: [:show]
  #get 'users/:id' => 'users#show'

  root 'categories#index'
end
