class GenresController < ApplicationController

    def index
      @genres = Genre.all
      render :index
    end

  def new
    @genre = Genre.new
    render :new
  end

  def create
    @genre = Genre.create(genre_params)
    redirect_to genre_path(@genre)
  end

  def edit
    @genre = Genre.new
    render :edit
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(genre_params)
    render :show
  end

  def show
    @genre = Genre.find(params[:id])
    render :show
  end

  private

  def genre_params
    params.require(:genre).permit(:name)
  end
end
