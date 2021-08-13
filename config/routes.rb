Rails.application.routes.draw do
  resources :workouts, except: :update 
  resources :dice_sets, only: [:index, :show]
end
