Rails.application.routes.draw do
  get 'reservations/import'
  resources :reservations, only: [:index]
  resources :reservations do
    collection do
      post 'import'
    end
  end
end
