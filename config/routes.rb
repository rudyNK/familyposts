Rails.application.routes.draw do
  get 'users/new'
  get 'welcome/index'

  # resources :articles


resources :articles do
  resources :comments
end
  
  root 'welcome#index'


  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'

  resources :users

end
