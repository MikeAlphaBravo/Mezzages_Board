Rails.application.routes.draw do
  resources :users
  resources :boards do
    resources :mezzages
  end
end
