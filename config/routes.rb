Rails.application.routes.draw do
  get 'reservations/import'
  resources :reservations, only: [:index]
end
