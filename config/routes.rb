Rails.application.routes.draw do
  root 'home#index'

  resources :messages, only: %w[index create destroy]
end
