Rails.application.routes.draw do

  devise_for :users
  root "articles#index"

  resources :articles do
    collection do
      get 'get_category_children', defaults: { format: 'json' }
      get 'get_category_grandchildren', defaults: { format: 'json' }
    end
    member do
      get 'get_category_children', defaults: { format: 'json' }
      get 'get_category_grandchildren', defaults: { format: 'json' }
    end
  end

  get 'about', to: 'pages#about'
  get 'search', to: 'pages#search'
  get 'search_result', to: 'pages#search_result'
  get 'tag', to: 'pages#tag'
end
