GenericApp::Application.routes.draw do
  resources :users
  get "login" => "user_sessions#new"
  get "logout" => "user_sessions#destroy"
  resources :user_sessions

  root :to => 'user_sessions#new'
end
