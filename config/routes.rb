Rails.application.routes.draw do
  resources :reservations, only: [:index] do
    collection do
      get :import
      post :import
      get :show_indicators
    end
  end
end
