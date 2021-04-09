Rails.application.routes.draw do
  # get 'home/index'
  devise_for :users, 
    path: '',
    path_names: {
      sign_in: 'login',
      sign_out: 'logout'
    },
    controllers: {
      sessions: 'sessions',
      registrations: 'registrations'
    }

  post '/login', to: 'users#login'
  get '/auto_login', to: 'users#auto_login'
  root to: 'home#index'

  namespace :api do
    namespace :v1 do
      get 'users', to: 'users#index'
    end
  end

end
