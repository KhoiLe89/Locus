Rails.application.routes.draw do
root "continent#index"
  resources :destinations, only: [:index, :show] do
    resources :activities, except: [:index, :show]
    end
  resources :activities do
  resources :reviews
    end
    resources :reviews
    resources :continents
    resources :continents do
      resources :destinations
    end
end
