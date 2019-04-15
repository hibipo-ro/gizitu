Rails.application.routes.draw do
  get "posts/mypage"        => "posts#mypage"
  post "posts/create"       => "posts#create"
  post "posts/:id/update"   => "posts#update"
  # post "posts/:id/destroy" => "posts#destroy"
  post "posts/:id/strength" => "posts#strength"
  post "posts/:id/weakness" => "posts#weakness"
  root to: 'posts#index'
  get  "/signup"            => "users#new"
  resources :posts
  resources :users
end
