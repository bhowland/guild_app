Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/edit'
  get 'sessions/new'
  get 'reply_messages/new'
  get 'messages/new'
  get 'users/new'
  root 'static_pages#index'
  get 'about'   => 'static_pages#about_us'
  get 'contact' => 'static_pages#contact'
  get 'signup' => 'users#new'
  mount Forem::Engine, :at => "/forem/"
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  #for forem
  get 'users/sign_in' 
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]

end

