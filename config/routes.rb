Rails.application.routes.draw do

  root "reservation_requests#index"

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  
  resources :users do
    member do
      post 'update_role'
    end
  end

  resources :reservation_requests do
    member do
      post 'approve'
      post 'disapprove'
    end
    get 'map', on: :collection
  end
end
