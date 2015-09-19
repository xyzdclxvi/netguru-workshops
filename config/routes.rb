Rails.application.routes.draw do
  

  devise_for :users
  resources :categories do
    resources :products do
      resources :reviews
    end
  end
  
  resources :users, only: [:show]
  get 'users/:id/products' => 'users#show_user_products', as: :user_products
  get 'users/:id/reviews' => 'users#show_user_reviews', as: :user_reviews

  root 'categories#index'
end
