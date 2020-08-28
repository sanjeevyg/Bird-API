class BirdsController < ApplicationController
    def index 
        @birds = Bird.all 
        render json: @birds
    end

    def show 
        @bird = Bird.find(params[:id])
        render json: @bird
    end

    def create 
        @bird = Bird.create(
            name: params[:name],
            size: params[:size]
        )
        render json: @bird 
    end

    def update
        @bird = Bird.find(params[:id])
        @bird.update(
            name: params[:name],
            size: params[:size]
        )
        render json: "message: #{@bird.id}'s name is updated to #{params[:name]}"
    end
    
    def destroy 
        @bird = Bird.find(params[:id])
        @bird.destroy 
        render json: "message: #{@bird.id} is destroyed."
    end
end
