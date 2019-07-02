Rails.application.routes.draw do


  scope "admin" do
    resources :preferences, only: [:index]
  end
  resources :preferences
  resources :artists do
    resources :songs, only: [:index, :show]
  end
  resources :songs


end
