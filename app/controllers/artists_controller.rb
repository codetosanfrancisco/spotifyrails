class ArtistsController < ApplicationController

    def new
        byebug
        @artist = Artist.new
    end

    def create
        @artist = Artist.new(name: params[:artist][:name], year_of_debut: params[:artist][:year_of_debut]);
        @artist.company = current_company
         if @artist.save
            flash[:success] = "artist is successfully added."
            redirect_to root_path
        else
            flash.now[:danger] = "artist cannot be added."
            render "new"
        end
    end
end
