Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  resources :perfumns, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  #get "/perfumns", to: "perfumns#index"
  #get "/perfumns/:id", to: "perfumns#getone"

end
