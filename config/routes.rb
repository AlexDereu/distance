Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get   "villes",          to: "villes#index"
  get   "villes/new",      to: "villes#new", as: :new_ville
  post  "villes",          to: "villes#create"
  get   "villes/:id",      to: "villes#show", as: :ville
  get   "villes/:id/edit", to: "villes#edit", as: :edit_ville
  patch "villes/:id",      to: "villes#update"
  delete "villes/:id",     to: "villes#destroy"
end
