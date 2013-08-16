TddIntro::Application.routes.draw do
  resources :tasks, only: [:index, :new, :create] do
    resources :completions, only: [:create]
    

  end
  	get '/horaires/index'
  	post '/horaires/index'
  	get '/horaires/new'
  	post '/horaires/new'
  	get '/horaires/liste_arrets'
  	post '/horaires/liste_arrets'
  	get '/horaires/retour'
  	post '/horaires/retour'
  	get '/horaires/trio'
  	post '/horaires/trio'

  root to: 'tasks#index'
end
