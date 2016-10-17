Rails.application.routes.draw do
root "destinations#index"
  resources :destinations do
  resources :activities, except: [:index, :show]
    end
  resources :activities do
  resources :reviews
    end
end
