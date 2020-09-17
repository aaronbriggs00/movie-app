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
    @movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      director: params[:director],
      english: params[:english]
      )
    if @movie.save
      render "show.json.jb"
    else
      render json: {errors:@movie.errors.full_messages}
    end
  end
  def update
    @movie = Movie.find(params[:id])
    @movie.title = params[:title] || @movie.title
    @movie.year = params[:year] || @movie.year
    @movie.plot = params[:plot] || @movie.plot
    @movie.director = params[:director] || @movie.director
    @movie.english = params[:english] || @movie.english
    if @movie.save
      render "show.json.jb"
    else
      render json: {errors:@movie.errors.full_messages}
    end
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
