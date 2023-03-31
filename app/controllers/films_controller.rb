class FilmsController < ApplicationController
    def index
        @film = Film.all
    end
    def show
        @film = Film.find(params[:id])
    end
    def new
        @gender = []
        Gender.all.each do |g|
            @gender << g.name
        end
        @director = []
        Director.all.each do |d|
            @director << d.name
        end
        @film = Film.new 
    end
    def create
        @film = Film.new(params.require(:film).permit(:title, :release_year, :summary, :country, :duration,  :director, :gender))
        @film.save
    end
    def edit
        @gender = []
        Gender.all.each do |g|
            @gender << g.name
        end
        @director = []
        Director.all.each do |d|
            @director << d.name
        end
        @film = Film.find(params[:id])
    end
    def update
        @film = Film.find(params[:id])
        @film.update(params.require(:film).permit(:title, :release_year, :summary, :country, :duration,  :director, :gender))
        redirect_to films_path
    end
    def destroy
        @film = Film.find(params[:id])
        @film.delete
        redirect_to films_path
    end
end
