Rails.application.routes.draw do
  root 'posts#index'
  get 'posts/new' => 'posts#new', as: :new_post
  post '/posts' => 'posts#create'
  get 'posts/:id' => 'posts#show', as: :post
  get 'posts/edit/:id' => 'posts#edit', as: :edit_post
  patch 'posts/:id' => 'posts#update', as: :update_post
end
