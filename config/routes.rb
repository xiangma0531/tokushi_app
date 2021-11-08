Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessoins: 'admins/sessions',
    passwords: 'admins/passwords',
    registrations: 'admins/registrations'
  }
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  resources :admins
  resources :users
  root to: 'users#index'
end
