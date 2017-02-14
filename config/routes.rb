Rails.application.routes.draw do
  root "devise/sessions#new"
  use_doorkeeper
  devise_for :users, controllers: {
    sessions: "users/sessions",
    confirmations: "users/confirmations",
    passwords: "users/passwords",
    omniauth_callbacks: "users/omniauth_callbacks",
    unlocks: "users/unlocks",
    registrations: "users/registrations"
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
