Rails.application.routes.draw do
  resources :reservations, only: [:index] do
    collection do
      get :import
      post :import
      get :show_indicators
      get :import_summary
    end
  end
end
