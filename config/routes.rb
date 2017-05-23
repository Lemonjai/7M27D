Rails.application.routes.draw do
  root 'spa#main'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :blogs

end
