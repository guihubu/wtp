Rails.application.routes.draw do
  devise_for :user_accounts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "application#index"

  get :index, :to => 'application#index'
end
