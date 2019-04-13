Rails.application.routes.draw do
  get 'users/new'
  get "posts/mypage" => "posts#mypage"
  post "posts/create" => "posts#create"
  post "posts/:id/update" => "posts#update"
  # post "posts/:id/destroy" => "posts#destroy"
  post "posts/:id/strength" => "posts#strength"
  post "posts/:id/weakness" => "posts#weakness"
  root to: 'posts#index'
  resources :posts
  resources :users
end
