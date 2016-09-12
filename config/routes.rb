Rails.application.routes.draw do
  root to: "events#:id"
  get "events" => "events#index"
  get "events/:id" =>"events#show"
end
