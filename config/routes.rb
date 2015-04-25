Rails.application.routes.draw do

  get 'user/new'

  root "user#index"

  resources :about
  resources :high_schools

end
