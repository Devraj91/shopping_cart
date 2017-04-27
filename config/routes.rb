DemoApp::Application.routes.draw do
  resources :payments

  resources :orders

  get 'success' => 'payments#successfull'

  resources :line_items

  resources :carts

  root 'products#index'

  namespace :admin do
    resources :products
  end

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/new' => 'users#index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

resources :products
namespace :admin do
end

end
