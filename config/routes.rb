Rails.application.routes.draw do
  root 'pages#index'
  devise_scope :user do
    get "/auth/google_oauth2/callback" => "sessions#create_from_omniauth"
end
  devise_for :users, :controllers => {:registrations => "users",:sessions => "sessions"}
  get '/creator/home', to: 'creator#home', as: 'creator_home'
  #devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
