Rails.application.routes.draw do

  root 'welcome#index'

  get 'home'     => "home#index"

  post '/comments' => "comments#create"


  devise_for :users
  resources :topics


end
