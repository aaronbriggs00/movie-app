Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE

  namespace :api do
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"
    #movies
    get "/movies" => "movies#index"
    get "/movies/:id" => "movies#show"
    patch "/movies/:id" => "movies#update"
    post "/movies" => "movies#create"
    delete "/movies/:id" => "movies#destroy"

    #actors
    get "/actors" => "actors#index"
    get "/actors/:id" => "actors#show"
    patch "/actors/:id" => "actors#update"
    post "/actors" => "actors#create"
    delete "/actors/:id" => "actors#destroy"

    #genres
    get "/movie_genres" => "movie_genres#index"
    post "/movie_genres" => "movie_genres#create"

    #nonsense
    get "/movies/new_arrivals" => "movies#new_arrivals"
  end 
end
