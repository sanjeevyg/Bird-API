class TreesController < ApplicationController
    def index 
        @trees = Tree.all
        render json: @trees, include: [:birds]
    end

    def show 
        @tree = Tree.find(params[:id])
        render json: @tree
    end
end
