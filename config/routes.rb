Rails.application.routes.draw do
  resources :rsvps, only: [:create, :update, :destroy]
  resources :memberships, only: [:create, :destroy]
  resources :events
  resources :groups, only: [:index, :show, :create]
  resources :users, only: [:index, :update]
end
