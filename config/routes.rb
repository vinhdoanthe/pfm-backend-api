Rails.application.routes.draw do
  post 'authenticate', to: 'authentication#authenticate'
  get 'auto_login', to: 'application#auto_login'

  namespace :api do
    namespace :v1 do
      namespace :config do
        resources :categories
      end

      resources :tasks
    end
  end
  
end
