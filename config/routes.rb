Rails.application.routes.draw do

  root "about_me#index"

  resources :about_me
  resources :high_schools

end
