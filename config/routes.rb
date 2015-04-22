Rails.application.routes.draw do

  root "welcome#index"

  resources :about_me
  resources :high_schools

end
