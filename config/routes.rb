Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/movie/" => "movies#movie_action"
    get "/movie/new_arrivals" => "movies#new_arrivals"
  end
end
