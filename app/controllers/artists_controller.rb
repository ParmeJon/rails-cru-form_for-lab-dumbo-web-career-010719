class ArtistsController < ApplicationController

  def index
    @artist = Artist.all
    render :index
  end
  
  def new
    @artist = Artist.new
    render :new
  end

  def create
    @artist = Artist.create(artist_params)
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.new
    render :edit
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params)
    render :show
  end

  def show
    @artist = Artist.find(params[:id])
    render :show
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end
end
