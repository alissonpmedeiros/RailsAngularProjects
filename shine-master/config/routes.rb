Rails.application.routes.draw do
  get "angular_test", to: "angular_test#index"	
  
  resources :customers, only: [:index, :show, :update]	
  devise_for :users
  get "fake_billing", to: "fake_billing#show"
  
  root 'dashboard#index'  
end
