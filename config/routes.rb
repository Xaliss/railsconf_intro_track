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
    get '/horaires/tonnerre'
    post '/horaires/tonnerre'
    get '/horaires/passages'
    post '/horaires/passages'
    get '/horaires/perturbs'
    get '/alimentator/index'
    post '/alimentator/index' 
   

    post '/trips/charge' 
    get '/trips/index' 

    


  	get '/trios/index'
  	post '/trios/index'


  root to: 'tasks#index'
end
