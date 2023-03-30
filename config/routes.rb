Rails.application.routes.draw do

  root to: 'home#index' 
  resources :genders
  resources :directors
end
