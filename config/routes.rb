Rails.application.routes.draw do
  resources :bookings
  resources :properties do
     member do 
      get :all_bookings
  end
end

  # get 'homes/index'
   devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "homes#index"
# devise_for :users, controllers: { sessions: 'users/sessions'}
 # resources :roles
 # resources :users
  get 'all_properties', to: 'properties#all_property'
  get 'all_bookings', to: 'bookings#all_bookings'




end
