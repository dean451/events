Rails.application.routes.draw do

  devise_for :users
  root to: 'events#index'

  resources :events do
    resources :registrations
  end
end
