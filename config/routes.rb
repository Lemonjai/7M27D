Rails.application.routes.draw do
  devise_for :users
  root 'spa#main'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :blogs
  resources :projects
  resources :works

  get '*path' => redirect('/')

end
