class DirectorsController < ApplicationController
    def index
        @director = Director.all
    end
    def new 
        @director = Director.new
        @gender = []
        Gender.all.each do |g|
            @gender << g.name
        end
    end
    def create  
        @gender = []
        Gender.all.each do |g|
            @gender << g.name
        end

        @director = Director.new(params.require(:director).permit(:name, :nascionalidade, :birth, :favorite_genere))
        @director.save

        return redirect_to root_path if  @director.save
        
        flash[:alert] = "Todos os campos precisam estar preenchidos"

        render :new
    end 
    def edit
        @gender = []
        Gender.all.each do |g|
            @gender << g.name
        end
        @director = Director.find(params[:id])
    end
    def update
        @director = Director.find(params[:id])
        @director.update(params.require(:director).permit(:name, :nascionalidade, :birth, :favorite_genere))
        redirect_to directors_path
    end
    def destroy
        @director = Director.find(params[:id])
        @director.delete

        redirect_to directors_path if @director.delete
    end
end
