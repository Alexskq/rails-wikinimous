Rails.application.routes.draw do
  get 'articles/index', to: "articles#index", as: :list
  get 'articles/new', to: "articles#new", as: :new_article

  get 'articles/:id', to: "articles#show", as: :article

  post 'articles', to: "articles#create"

  get 'articles/:id/edit', to: "articles#edit", as: :edit_article
  patch 'articles/:id', to: "articles#update", as: :update_article

  delete 'articles/:id', to: "articles#destroy", as: :destroy_article

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
