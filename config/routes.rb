Rails.application.routes.draw do
  
#   root 'users#new'
  root 'homes#index' 
  
  get 'checks/new'
  get 'checks/create'
  # 都道府県詳細ページの戻るボタンでトップページに戻る際に必要
  get 'prefectures/index'
  get 'users/index'
  get 'users/:id', to: 'users#show'
  get 'homes/index'
  get 'sessions/new'

  post '/', to: 'checks#create'
  post 'prefectures/index' , to: 'prefectures#update_been'

#   get 'favorites/index'
#   post '/favoites', to: 'favorites#create'
#   get 'likes/index'
#   post '/likes', to: 'favorites#create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/signup', to: 'users#new'
  resources :users
#   resources :prefectures do
#       resources :like, only: [:create, :destroy]
#   end
  resources :prefectures
#   only: [:edit, :update, :show, :destory]
  resources :account_activations, only: [:edit]

  resources :checks
end
