Rails.application.routes.draw do
  devise_for :users 
  root to: 'events#index'
  get "events" => "events#index"
  get "events/:id" =>"events#show"
end
