Rails.application.routes.draw do # ~> NameError: uninitialized constant Rails
  post 'playlists/send_mail'
  post 'update_user', to: 'users#update'

  root to: 'visitors#index'

  devise_for :users, controllers: { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end # => 
