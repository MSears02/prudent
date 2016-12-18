Rails.application.routes.draw do
  get 'greetings/hello'



   # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root 'greetings#hello'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
