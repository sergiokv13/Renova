Rails.application.routes.draw do

  resources :mensajes

  root 'index#index'
  get '/no_existe' => 'index#no_existe'
  get "*missing" => redirect("/no_existe")

end
