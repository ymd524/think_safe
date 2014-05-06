ThinkSafe::Application.routes.draw do

  resources :rses

  resources :values

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'

  resources :stocks

  resources :prices

  resources :volumes

  resources :rsis

  resources :smas

   root :to => "stocks#index"

   match ':controller(/:action(/:id(.:format)))'
end
