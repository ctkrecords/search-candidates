Rails.application.routes.draw do
  authenticated :user do
    root to: "candidates#index"
  end
  
  unauthenticated :user do
    root "pages#home"
  end
  get 'pages/home'
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout'}, :skip => [:registrations, :password]
  resources :candidates
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'

end
