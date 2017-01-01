Rails.application.routes.draw do
  resources :budget_items
  resources :budgets
  get 'home/index'

  resources :users
  get 'greetings/hello'



   # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
