Rails.application.routes.draw do
  # get '/' =>  "posts#index"
  # get 'posts/new' => "posts#new"
  # get 'posts/:id/edit' => "posts#edit"
  get "posts/mypage" => "posts#mypage"
  post "posts/create" => "posts#create"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"
  post "posts/:id/strength" => "posts#strength"
  post "posts/:id/weakness" => "posts#weakness"
  # get 'posts/:id' => "posts#show"
  root to: 'posts#index'
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
