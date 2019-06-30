class SongsController < ApplicationController
    def new
        byebug
        @song = Song.new
    end

    def create
        byebug
        song = Song.new(name: params[:song][:name],description:params[:song][:description],file:params[:song][:file])
        song.album = Album.first
        song.save
    end
end
