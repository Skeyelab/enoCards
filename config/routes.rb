Rails.application.routes.draw do
  #resources :eno_cards

  get '/loaderio-a6c8a368ec0ac4c24c199b8d6cf9aca1', to: 'eno_cards#verify'

  root to: "eno_cards#show_random"

  get '/cards', to: 'eno_cards#index'
  get '/counts', to: 'eno_cards#counts'

  #  get '/:id', to: 'eno_cards#show'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
