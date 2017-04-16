Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    omiauth_callbacks: 'users/omiauth_callbacks',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  root 'posts#index'
  devise_scope :user do
    get 'sign_in', to: 'devise/sessions#new'
  end
end
