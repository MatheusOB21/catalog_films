class GendersController < ApplicationController
    def index
        @gender = Gender.all
    end
    def new 
        @gender = Gender.new
    end
    
    def create
        @gender = Gender.new(params.require(:gender).permit(:name))
        @gender.save

        return redirect_to root_path if @gender.save
        
        flash[:alert] = "O gênero precisa de um nome!"

        render :new
    end
    def edit 
        @gender = Gender.find(params[:id])
    end
    def update
        @gender = Gender.find(params[:id])
        @gender.update(params.require(:gender).permit(:name))
        return redirect_to root_path if @gender.save
    end
end
