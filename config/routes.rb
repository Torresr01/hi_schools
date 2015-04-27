Rails.application.routes.draw do
  
  root "users#index"
	
  resources :users
  resources :high_schools

 	devise_for :users

	get '/about' => 'pages#about'
	get '/contact' => 'pages#contact'

end
