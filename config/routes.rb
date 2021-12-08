Rails.application.routes.draw do
  root 'games#index'
  
  # collection routes
  # member routes
  resources :games do
    member do
      post :make_guess
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
