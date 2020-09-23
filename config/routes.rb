Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts
  resources :bloggers
  resources :destinations

  post "posts/:id/like_me", to: "posts#like_me", as: "like_me"
  get "/", to: "posts#homepage", as: "homepage"
  get "/posts/new/:id/", to: "posts#new", as: "destination_post"
end