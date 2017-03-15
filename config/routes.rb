Rails.application.routes.draw do
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "photos#home"
  get "/" => "photos#home"
  get "/home" => "photos#home"
  get "/explore" => "tags#explore"
  get 'tags/:tag', to: 'articles#index', as: :tag

  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :photos do
    resources :comments
  end
  resources :tags
end
