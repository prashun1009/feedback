Rails.application.routes.draw do
  devise_for :users
  # get 'feedback/new'

  # post 'feedback/create'
  resources :feedbacks
  root 'home#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
