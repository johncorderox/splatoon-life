Rails.application.routes.draw do

  get 'comments/index'
  root 'welcome#index'

  get 'home' => "home#index"


  devise_for :users
  resources :topics

end
