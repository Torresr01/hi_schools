Rails.application.routes.draw do
  get 'about_me/:index'

  get 'about_me/:show'

  root "welcome#index"

  resources :about_me
  resources :high_schools

end
