Rails.application.routes.draw do
  root 'posts#index'
  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create', as: 'sessions'
  get 'signup', to: 'users#new', as: 'signup'
  post 'signup', to: 'users#create', as: 'users'
  delete 'logout', to: 'sessions#destroy', as: 'logout'
  post 'posts', to: 'posts#create', as: 'posts'
  get 'posts/:post_id', to: 'posts#show', as: 'post'
  post 'posts/:post_id/like', to: 'likes#create', as: 'like'
  delete 'posts/:post_id/unlike', to: 'likes#delete', as: 'unlike'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
