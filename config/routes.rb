Asqus::Application.routes.draw do
  resources :poll_responses


  resources :poll_answers


  resources :poll_questions


  resources :official_administrators


  resources :official_tenures


  resources :offices


  resources :state_senate_districts


  resources :state_house_districts


  resources :counties


  resources :congressional_districts


  resources :states


  resources :municipalities


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