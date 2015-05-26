Rails.application.routes.draw do
  resources :initiatives
  resources :leads
  resources :meetings
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
