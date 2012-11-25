Asqus::Application.routes.draw do
  resources :political_entities


  resources :poll_workflow_states


  resources :polls


  resources :officials


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
  match '/auth/:provider/callback' => 'authentications#create'

end