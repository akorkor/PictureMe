Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "photos#home"
  get "/" => "photos#home"
  get "/home" => "photos#home"

  resources :photos do
    resources :comments
  end
  resources :tags

end
