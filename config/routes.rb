Rails.application.routes.draw do
  # CRUD
  # Read all
  get '/pets', to: 'pets#index', as: :pets
  # Create (form / creation)
  get '/pets/new', to: 'pets#new', as: :new_pet
  post '/pets', to: 'pets#create'
  # Read one
  get '/pets/:id', to: 'pets#show', as: :pet
  # Edit/Update
  get '/pets/:id/edit', to: 'pets#edit', as: :edit_pet
  patch '/pets/:id', to: 'pets#update'
  # Destroy
  delete '/pets/:id', to: 'pets#destroy'

  # resources :pets
end
