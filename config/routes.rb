Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#landing'

  get '/about', to: 'pages#about'

  get '/contact', to: 'pages#contact'

  get '/blogs', to: 'articles#index'

  get '/fitness', to: 'pages#fitness'

  get '/mealplans', to: 'pages#mealplans'

  resources :articles do
    resources :questions, only: [ :new, :create]
  end
end
