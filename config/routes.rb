Rails.application.routes.draw do
  resources :ideas
  resources :comments
  resources :comments
  resources :profiles
  resources :initiatives
  resources :leads
  resources :meetings
  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :comments
end
