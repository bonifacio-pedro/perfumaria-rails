Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  resources :perfumns, only: [:index, :show, :new, :create, :edit, :update, :delete]
end
