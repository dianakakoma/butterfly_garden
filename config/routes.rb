Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
  #   get "/photos" => "photos#index"
  get "/butterflies" => "butterflies#index"
  get "/butterflies/:id" => "butterflies#show"
  post "/butterflies" => "butterflies#create"
  end

end
