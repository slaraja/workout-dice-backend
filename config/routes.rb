Rails.application.routes.draw do
  resources :exercises, except: :update 
  resources :workouts, only: [:index, :show]
end
