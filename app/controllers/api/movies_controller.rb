class Api::MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render "index.json.jb" 
  end
  def show
    @movie = Movie.find(params[:id])
    render "show.json.jb"
  end
  def create
    Movie.create(title: params[:title], year: params[:year], plot: params[:plot])
  end
  def update
    @movie = Movie.find(params[:id])
    @movie.title = params[:title] || @movie.title
    @movie.year = params[:year] || @movie.year
    @movie.plot = params[:plot] || @movie.plot
    @movie.save
    render "show.json.jb"
  end
  def destroy
    Movie.find(params[:id]).destroy
    render json: {message: "destroyed successfully probably"}
  end
  def new_arrivals
    @movies = Movie.order(created_at: :desc)
    render "index.json.jb"
  end
end
