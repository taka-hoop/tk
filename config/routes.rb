Rails.application.routes.draw do
  devise_for :users
  root to: "messages#index"
  resources :messages, only: [:index, :new, :create, :destroy, :edit, :show]
  resources :groups, only: [:new, :create, :edit, :update] do
    resources :submit, only: [:index, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
