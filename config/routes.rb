Rails.application.routes.draw do
  get 'user/profile'

  devise_for :user_accounts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "application#index"

  get :index, :to => 'application#index'

  scope :user do
  	get 'list', :to => 'user#list', :alias => :user_list
  	get 'profile', :to => 'user#profile', :alias => :user_profile
  end
end
