Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  # mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: { registrations: "registrations", omniauth_callbacks: "omniauth_callbacks" }
 
  
  resources :events
  resources :articles
  resources :clients
  resources :dashboard
  
  get '/about', :to => 'pages#about', :as => 'about'
  get '/faq', :to => 'pages#faq', :as => 'faq'
  get '/contact', :to => 'pages#contact', :as => 'contact'
  
  root :to => 'pages#home'
  ActiveAdmin.routes(self)
end
