Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'post_images#index'
  resources :post_images, only: [:new, :create, :index, :show]
  resource :post_comments, only: [:create, :destroy]
  resources :users, only:[:show, :edit, :update, :destroy,]
end
