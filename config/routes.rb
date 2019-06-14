Rails.application.routes.draw do
 namespace :api do
 
  get '/expenses' => 'expenses#index'
  post '/expenses' => 'expenses#create'
  get '/expenses/:id'  => 'expenses#show'
  patch '/expenses/:id' => 'expenses#update'
  delete '/expenses/:id' => 'expenses#destroy'


  
  get '/users'  => 'users#index' 
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  get '/categories' => 'categories#index'
  post '/categories' => 'categories#create'
  get '/categories/:id'  => 'categories#show'
  patch '/categories/:id' => 'categories#update'
  delete '/categories/:id' => 'categories#destroy'
    
 end
end
