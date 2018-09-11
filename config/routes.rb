Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#landing'

  get '/about', to: 'pages#about'

  get '/contact', to: 'pages#contact'

  get '/fitness', to: 'pages#fitness'

  get '/mealplans', to: 'pages#mealplans'

  resources :articles do
    resources :questions, only: [ :new, :create] do
      resources :answers, only: [ :new, :create]
    end
  end
end
