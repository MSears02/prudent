Rails.application.routes.draw do
  devise_for :users
  resources :budget_categories
  resources :budget_items
  resources :budgets

  namespace :api, defaults: {format: 'json'} do
    resources  :budgets
  end

  get 'home/index'

  get 'greetings/hello'
  



   # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root 'budgets#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
