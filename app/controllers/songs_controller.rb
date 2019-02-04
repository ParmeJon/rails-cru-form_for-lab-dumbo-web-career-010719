class SongsController < ApplicationController


    def index
      @songs = Song.all
      render :index
    end

  def new
    @song = Song.new
    render :new
  end

  def create
    @song = Song.create(song_params)
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.new
    render :edit
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params)
    render :show
  end

  def show
    @song = Song.find(params[:id])
    render :show
  end

  private

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
end
