Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  resources :articles
  devise_for :users, controllers: { registrations: "registrations"}
  resources :guides
  resources :contacts, only: [:new, :create]
  get '/about', to: 'welcome#about'
  root 'welcome#index'

  get '*path' => redirect('/')
end
