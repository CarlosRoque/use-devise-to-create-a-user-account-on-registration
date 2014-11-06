Rails.application.routes.draw do
  
  # We are customizing the registration route to add our company fields
  devise_for :users, :controllers => { registrations: 'registrations'}
  resources :users, :companies
  
    root 'welcome#index'
end
