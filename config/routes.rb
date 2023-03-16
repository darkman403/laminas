Rails.application.routes.draw do

  resources :dpersonals do
    resources :dproductos
  end

  resources :dproductos do
    resources :solicituds
  end

  resources :laminas
  resources :inicio

  #get 'solicituds/createback'
  #post 'solicituds/createback'

  #get 'solicituds/destroyback'
  #post 'solicituds/destroyback'
    #resources :dpersonales, path: '/'
end
