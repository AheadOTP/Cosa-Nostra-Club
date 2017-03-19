Rails.application.routes.draw do

  devise_for :users
  root to: "home#index"
  get 'home/index'

  get 'rate' => 'pages#rate'

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
