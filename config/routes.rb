Rails.application.routes.draw do
  get 'home/index'
  devise_for :users 

  # default is set to index but if user is logged in, repective page will be rendered
  root to: "home#index"

  resources :patients, except: :edit
  get '/patients/:id/edit', to: 'patients#edit', as: 'edit_patient'
  
  delete '/patients/:id', to: 'patients#destroy', as: 'destroy_patient'


end
