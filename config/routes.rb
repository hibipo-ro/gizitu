Rails.application.routes.draw do
  get 'sessions/new'
  get "posts/mypage"        => "posts#mypage"
  post "posts/create"       => "posts#create"
  post "posts/:id/update"   => "posts#update"
  # post "posts/:id/destroy" => "posts#destroy"
  post "posts/:id/strength" => "posts#strength"
  post "posts/:id/weakness" => "posts#weakness"
  root to: 'posts#index'
  get  "/signup"            => "users#new"
  post  "/signup"            => "users#create"
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :posts
  resources :users
end
