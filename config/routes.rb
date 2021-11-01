Rails.application.routes.draw do
  devise_for :users
  root 'anotations#index'
  resources :anotations
end
