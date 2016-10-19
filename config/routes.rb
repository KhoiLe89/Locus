Rails.application.routes.draw do
root "continents#index"
  resources :destinations, only: [:index, :show, :create] do
    resources :activities
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
