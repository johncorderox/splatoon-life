Rails.application.routes.draw do

  root 'welcome#index'

  get 'home'         => "home#index"

  post '/new_comment' => "comments#new_comment"

  delete '/comments/:id' => "comments#delete_comment"


  devise_for :users
  resources :topics


end
