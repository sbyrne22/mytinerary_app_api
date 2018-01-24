Rails.application.routes.draw do
  root 'welcome#index'
  resources :users do
    collection do
      post '/login', to: 'users#login'
    end
    resources :itineraries do
      resources :sections
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
