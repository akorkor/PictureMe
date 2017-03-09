Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "photos#home"

  resources :photo do
    resources :comment
  end
  resources :tag

  # get"/" => "photos#home"

end
