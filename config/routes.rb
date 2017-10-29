Rails.application.routes.draw do
  post 'plays/search'
  get 'productions/list'
  resources :productions
  resources :plays
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
