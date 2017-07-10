Rails.application.routes.draw do
  # show all profiles
  get 'profiles' => 'profiles#index'
  # whatever is in spot is the id, shows 1 profile
  get 'profiles/:id' => "profiles#show", as: :profile

 resources :tweets

  devise_for :users

  root 'tweets#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
