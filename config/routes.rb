Rails.application.routes.draw do

  devise_for :users
  root "articles#index"

  resources :articles

  get 'about', to: 'pages#about'
  get 'privacy', to: 'pages#privacy'
  get 'search', to: 'pages#search'
  get 'search_result', to: 'pages#search_result'
  get 'tag', to: 'pages#tag'
end
