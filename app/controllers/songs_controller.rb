class SongsController < ApplicationController
    def new
        @song = Song.new
    end

    def create
        song = Song.new(name: params[:song][:name],description:params[:song][:description],file:params[:song][:file])
        song.album = Album.first
        if song.save
            flash[:success] = "Songs is successfully added."
            redirect_to root_path
        else
            flash.now[:danger] = "Songs cannot be added."
            render "new"
        end
    end
end
