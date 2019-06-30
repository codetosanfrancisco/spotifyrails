class CompaniesController < ApplicationController

    def new
        @company = Company.new
        @album = Album.first
    end

    def create
        company = Company.new(name:params[:company][:name],year_established:params[:company][:year_established])
         if company.save
            flash[:success] = "Company is successfully added."
            redirect_to root_path
        else
            flash.now[:danger] = "Company cannot be added."
            render "new"
        end
    end
end
