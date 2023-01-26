Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    root to: 'pages#home'
    
    resources :properties do
      collection do
        post :import
      end
    end

    resources :offices do
      collection do
        post :import
      end
    end
  end
  # Defines the root path route ("/")
  # root "articles#index"
