class AlbumsController < ApplicationController

    def new
        @album = Album.new
    end

    def create
        album = Album.new(album_params)
        album.company = current_company
         if album.save
            flash[:success] = "album is successfully added."
            redirect_to root_path
        else
            flash.now[:danger] = "album cannot be added."
            render "new"
        end
    end

    def artists
        @album = Album.find(params[:id])
    end


    private 

    def album_params
        {
            name:params[:album][:name],
            description:params[:album][:description],
            group_name:params[:album][:group_name],
            year_published:params[:album][:year_published],
            image:params[:album][:image],
        }
    end
end
