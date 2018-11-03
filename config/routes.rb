Rails.application.routes.draw do

  root "reservation_requests#index"

  devise_for :users
  
  resources :reservation_requests do
    member do
      post 'approve'
      post 'disapprove'
    end
  end
end
