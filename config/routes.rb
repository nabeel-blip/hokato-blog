Rails.application.routes.draw do
  get "", to: "basic#home"
  get "about", to: "basic#about"
end
