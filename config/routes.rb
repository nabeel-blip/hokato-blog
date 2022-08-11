Rails.application.routes.draw do
  get "", to: "basic#home"
  get "about", to: "basic#about"
  resources :articles, only: [:show, :index, :new, :create]
end
