Rails.application.routes.draw do
  
  devise_for :users
  resources :kitaps, :path =>"kitaplar" do
	  	resources :yorums, :path =>"yorumlar"
	    put "like", to: "kitaps#like"
  end
  resources :yazars
  root "kitaps#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
