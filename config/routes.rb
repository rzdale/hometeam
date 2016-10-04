Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root to: 'events#index'


  post '/login' => 'users#login'



  get '/events/:id' => 'events#show'

  get '/users/logout'
  get '/users/:id' => 'users#show'

end
