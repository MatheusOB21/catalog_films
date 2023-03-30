class DirectorsController < ApplicationController
    def new 
        @director = Director.new
        @gender = []
        Gender.all.each do |g|
            @gender << g.name
        end
    end
    def create  
        @director = Director.new(params.require(:director).permit(:name, :nascionalidade, :birth, :favorite_genere))
        @director.save

        return redirect_to root_path if  @director.save
        
        flash[:alert] = "O diretor precisa de um nome!"

        render :new
    end 
end
