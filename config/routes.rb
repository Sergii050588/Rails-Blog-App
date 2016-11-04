Rails.application.routes.draw do
 
  root 'welcome#index'

  resources :recipes do
    member do
      post 'like'
    end
  end


 
end
