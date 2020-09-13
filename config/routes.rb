Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/movies/index" => "movies#index"
    get "/movies/:id" => "movies#show"
    get "/movies/new_arrivals" => "movies#new_arrivals"
    get "/movies" => "movies#show"
    post "/movies" => "movies#show"
  end 
end
