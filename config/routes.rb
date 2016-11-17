Rails.application.routes.draw do
 
  root 'welcome#index'

  resources :recipes do
    member do
      post 'like'
    end
  end

  resources :chefs, except: [:new]

  get '/register', to: 'chefs#new'

end
