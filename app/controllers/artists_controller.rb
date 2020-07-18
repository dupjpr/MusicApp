class ArtistsController < ApplicationController

    def index
        @artists = Artist.all
    end

    def show
        @artist = Artist.find(params[:id])
        @album = @artist.albums
    end

end
