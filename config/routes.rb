Rails.application.routes.draw do
  root 'offers#index'

  resources :offers
end
