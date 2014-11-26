Rails.application.routes.draw do
  
  root to: "home#index"
  
  namespace :api do
    namespace :v1 do
      resources :algorithms do
        resources :workers
      end
    end
  end
  
  resources :home
  
  resources :algorithms
end
