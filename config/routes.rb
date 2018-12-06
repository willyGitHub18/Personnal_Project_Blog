Rails.application.routes.draw do
  root 'static_pages#home'

  get 'first_article', to: 'static_pages#first_article', as: "first_article" 

  get 'posts/new-zealand', to: 'posts#index_nz', as: "new_zealand"
  get 'posts/thailand', to: 'posts#index_th', as: "thailand"
  get 'posts/laos', to: 'posts#index_la', as: "laos"
  get 'posts/vietnam', to: 'posts#index_vi', as: "vietnam"
  get 'posts/cambodge', to: 'posts#index_ca', as: "cambodia"
  get 'posts/philippines', to: 'posts#index_phi', as: "philippines"
  get 'posts/japan', to: 'posts#index_ja', as: "japan"
  get 'posts/usa', to: 'posts#index_us', as: "usa"
  get 'posts/peru', to: 'posts#index_pe', as: "peru"
  get 'posts/bolivia', to: 'posts#index_bo', as: "bolivia"
  get 'posts/argentina', to: 'posts#index_arg', as: "argentina"
  get 'posts/chile', to: 'posts#index_chi', as: "chile"

  get 'sessions/new'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users

  resources :posts

  resources :photos
end
