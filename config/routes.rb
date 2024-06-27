Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '*path', to: 'home#index', constraints: ->(request){ request.format.html? }
  root 'home#index'
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  Rails.application.routes.draw do
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
    # Other routes...
  
  if Rails.env.development?
      match "/__vite_ping", to: proc { [200, {}, ['']] }, via: :get
  end
  
    # More routes...
  end
  

  # Defines the root path route ("/")
  # root "posts#index"
end
