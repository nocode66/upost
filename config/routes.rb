Rails.application.routes.draw do
  root to: 'people#new'
  resources :people, only: [:show, :new, :create]
  post '/cities/:country_id', to: 'cities#index'
  get 'thanks', to: 'people#thank_you'
end
