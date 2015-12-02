Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  # mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: { registrations: "registrations", omniauth_callbacks: "omniauth_callbacks" }
  resources :users
  
  resources :events
  resources :articles
  resources :clients
  resources :dashboard
  
  get '/about', :to => 'pages#about', :as => 'about'
  get '/faq', :to => 'pages#faq', :as => 'faq'
  get '/contact', :to => 'pages#contact', :as => 'contact'
  get '/amortization', :to => 'pages#amortization', :as => 'amortization'
  get '/about_us', :to => 'pages#about_us', :as => 'about_us'
  
  root :to => 'pages#home'
  ActiveAdmin.routes(self)
end
