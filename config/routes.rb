Rails.application.routes.draw do
  root 'pages#index'
  resource :songs
  resource :company
  resource :albums 
  resource :artists
  get "albums/:id/artists",to:"albums#artists",as: "albums_artists"
  devise_scope :user do
    get "/auth/google_oauth2/callback" => "sessions#create_from_omniauth"
  end
  devise_for :users, :controllers => {:registrations => "users",:sessions => "sessions"}
  get '/creator/home', to: 'creator#home', as: 'creator_home'
end
