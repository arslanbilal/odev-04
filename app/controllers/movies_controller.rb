class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]

  def index
    @movies = Movie.all
  end

  def show
  end

  def new
    @movie = Movie.new
    @categories = Category.all
  end

  def edit
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to @movie, notice: 'Movie was successfully created.'
    else
      @categories = Category.all
      render :new
    end
  end

  def update
    if @movie.update(movie_params)
      redirect_to @movie, notice: 'Movie was successfully updated.'
    else
      @movie = Movie.find(params[:id])
      render :edit
    end
  end

  def destroy
    @movie.destroy
    redirect_to movies_url, notice: 'Movie was successfully deleted.'
  end

  private
    def set_movie
      @movie = Movie.find(params[:id])
    end

    def movie_params
      params.require(:movie).permit(:title, :description, :director, :country, :date, category_ids: [])
    end
end
