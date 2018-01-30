Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants do
    collection do                       # collection => no restaurant id in URL
       get 'top', to: 'restaurants#top' # RestaurantsController#top
    end
    member do                             # member => restaurant id in URL
      get 'chef', to: 'restaurants#chef'  # RestaurantsController#chef
    end
  end
end
