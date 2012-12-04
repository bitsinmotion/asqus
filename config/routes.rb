Asqus::Application.routes.draw do
  resources :issues


  resources :nations


  resources :poll_options


  resources :quick_poll_options


  resources :quick_polls


  resources :user_groups


  resources :poll_responses


  resources :poll_questions


  resources :official_tenures


  resources :offices


  resources :state_senate_districts


  resources :state_house_districts


  resources :counties


  resources :congressional_districts


  resources :municipalities


  resources :poll_workflow_states
  resources :polls
  resources :officials

 
  authenticated :user do
    root :to => 'home#home'
  end
  root :to => "home#index"

  devise_for :users
  resources :users

  match '/auth/:provider/callback' => 'authentications#create'
  resources :authentications, :only => [:index,:create,:destroy]
  match '/auth/failure' => 'authentications#auth_failure'

end