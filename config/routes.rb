Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "blog_posts#index"

  # resources :blog_posts

  get "/blog/new", to: "blog_posts#new", as: :new_blog
  get "/blog/:id/edit", to: "blog_posts#edit", as: :edit_blog
  get "/blog/:id", to: "blog_posts#show", as: :blog
  patch "/blog/:id", to: "blog_posts#update"
  delete "/blog/:id", to: "blog_posts#delete"
  post "/blog", to: "blog_posts#create", as: :blog_posts
end
