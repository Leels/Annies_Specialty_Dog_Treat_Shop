Rails.application.routes.draw do
  root to: 'landing#index'
  resources :products do
    resources :reviews
  end
end
