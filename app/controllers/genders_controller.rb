class GendersController < ApplicationController
    def new 
        @gender = Gender.new
    end
    
    def create
        @gender = Gender.new(params.require(:gender).permit(:name))
        @gender.save

        return redirect_to root_path if @gender.save
        
        flash[:alert] = "O gênero precisa de um nome!"
        render "new"
    end
end
