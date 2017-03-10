Rails.application.routes.draw do
  #resources :eno_cards
  root to: "card#show_random"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
