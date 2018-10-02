Rails.application.routes.draw do
  root 'static_pages#home'

  get 'posts/new-zealand', to: 'posts#index_nz', as: "new_zealand"
  get 'posts/thailand', to: 'posts#index_th', as: "thailand"
  get 'posts/laos', to: 'posts#index_la', as: "laos"
  get 'posts/vietnam', to: 'posts#index_vi', as: "vietnam"

  resources :posts
end
