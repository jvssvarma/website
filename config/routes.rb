Rails.application.routes.draw do
  resources :articles
  devise_for :users, controllers: { registrations: "registrations"}
  resources :posts
  resources :projects
  resources :guides
  resources :contacts, only: [:new, :create]
  get '/about', to: 'welcome#about'
  root 'welcome#index'

  get '*path' => redirect('/')
end
