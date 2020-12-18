Rails.application.routes.draw do
  get 'histories/index'
  root 'home#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'cins/create', to: 'cins#create', as: 'create_cin'
  get 'cins/show/:id', to: 'cins#show', as: 'show_cin'
end
