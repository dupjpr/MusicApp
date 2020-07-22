class ArtistsController < ApplicationController

    def index
        @artists = Artist.all
    end

    def show
        @artist = Artist.find(params[:id])
        @album = @artist.albums
    end

    def new
        @artist = Artist.new
    end

    def create
        @nuevo = Artist.new(artist_params)

        if @nuevo.save
            redirect_to artists_path
        else
            render new
            
        end
    end

    private

    def artist_params
        params.require(:artist).permit(:name, :image_url)        
    end

end
