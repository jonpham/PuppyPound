Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get "/puppies", to: "puppes#index"
  get "/puppies/new", to: "puppies#new"
  post "/puppies", to: "puppies#create"


  get "/puppies/:id", to: "puppes#show"

end
