Rails.application.routes.draw do
  resources :rsvps
  resources :memberships
  resources :events
  resources :groups
  resources :users
end
