Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "get_contacts" => "contacts#action"

  get "get_contacts" => "contacts#all_contacts"
end
