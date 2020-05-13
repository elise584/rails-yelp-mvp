Rails.application.routes.draw do
  get 'restaurants/index'
  get 'restaurants/new'
  get 'restaurants/create'
  get 'restaurants/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: [:index, :new, :create]
  end
end
