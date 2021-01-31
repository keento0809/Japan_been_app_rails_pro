Rails.application.routes.draw do
  get '/login', to: 'sessions#new'

  root 'homes#index' 

  get '/signup', to: 'users#new'
  
#   get 'memories/new'
#   get 'memories/create'
#   get 'memories/edit'
#   root 'users#new'
  
  get 'checks/index'
  get 'checks/new', to: 'checks#new'
  get 'checks/create'
  # 都道府県詳細ページの戻るボタンでトップページに戻る際に必要
  get 'prefectures/index'
  get 'users/index'
  # テスト：下記ルートを消すとsignupページへリンクする際のエラーが無くなった
#   get 'users/:id', to: 'users#show'
  get 'homes/index'
  get 'sessions/new'

  post '/', to: 'checks#create'
  post 'prefectures/index' , to: 'prefectures#update_been'

#   get 'favorites/index'
#   post '/favoites', to: 'favorites#create'
#   get 'likes/index'
#   post '/likes', to: 'favorites#create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users
#   resources :prefectures do
#       resources :like, only: [:create, :destroy]
#   end
  resources :prefectures
#   only: [:edit, :update, :show, :destory]
  resources :account_activations, only: [:edit]

  resources :checks

  resources :memories


  post 'prefectures/:id', to: 'memories#create'
end
