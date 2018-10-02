Rails.application.routes.draw do
  root 'static_pages#home'

  get 'posts/new-zealand', to: 'posts#index_nz', as: "nz"
  get 'posts/thailand', to: 'posts#index_thailand', as: "th"

  resources :posts
end
