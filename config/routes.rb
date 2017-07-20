Rails.application.routes.draw do
  resources :leads
	get 'grayscales/index'
	get 'grayscales/form_land'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
