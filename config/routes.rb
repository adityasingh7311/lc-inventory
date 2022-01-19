Rails.application.routes.draw do
  resources :items
  get 'home/index'
  root :to => "home#index"
end
