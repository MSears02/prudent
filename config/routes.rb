Rails.application.routes.draw do
  devise_for :users
  resources :budget_categories
  resources :budget_items

  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources  :budgets
    end
  end

  get 'home/index'

  get 'greetings/hello'
  


  resources :budgets
   # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root 'budgets#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
