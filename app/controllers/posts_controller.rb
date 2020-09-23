class PostsController < ApplicationController

    def index

    end

    def show

    end

    def new

    end

    def create

    end

    def edit

    end

    def update

    end

    def destroy

    end

    private

    def strong_params(*args)
        params.require(:post).permit(*args)
    end


end
