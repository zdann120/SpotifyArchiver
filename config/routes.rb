Rails.application.routes.draw do
  post 'playlists/send_mail'

  root to: 'visitors#index'
  get 'visitors/index'

  devise_for :users, controllers: { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
