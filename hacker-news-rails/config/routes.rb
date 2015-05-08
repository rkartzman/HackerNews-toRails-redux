Rails.application.routes.draw do
  get '/' => "posts#index"

  get '/login' => "auth#login"
  get '/signup' => "auth#signup"
  get '/post/new' => "posts#new"
  post '/post/new' => "posts#create"
  get '/post/:id' => "posts#show"
end
