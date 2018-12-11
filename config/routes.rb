Rails.application.routes.draw do

  root 'welcome#index'

  get 'home' => "home#index"


  devise_for :users

end
