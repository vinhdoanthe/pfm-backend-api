Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      namespace :config do
        resources :categories
      end

      resources :tasks
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post 'authenticate', to: 'authentication#authenticate'
end
