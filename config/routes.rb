Rails.application.routes.draw do
  resources :profiles
  resources :initiatives
  resources :leads
  resources :meetings
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
