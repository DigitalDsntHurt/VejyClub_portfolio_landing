Rails.application.routes.draw do
  resources :new_haven_leads
  resources :simple_leads
  resources :leads
	get 'grayscales/index'
	get 'grayscales/form_land'
	root 'grayscales#form_land'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
