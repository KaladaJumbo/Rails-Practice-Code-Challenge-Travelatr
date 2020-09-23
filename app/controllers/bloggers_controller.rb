class BloggersController < ApplicationController
    before_action :find_bloggers, only: [:show, :edit, :update, :destroy]


    def index

        @bloggers = Blogger.all
        render "index"

    end

    def show

        render "show"

    end

    def new

        @blogger = Blogger.new
        render "new"

    end

    def create

        @blogger = Blogger.new(strong_params(:name, :age, :bio))
        if @blogger.save
            redirect blogger_path(@blogger)
        else
            render "new"
        end

    end

    def edit

    end

    def update

    end

    def destroy

    end

    private

    def strong_params(*args)
        params.require(:blogger).permit(*args)
    end

    def find_bloggers

        @blogger = Blogger.find(params[:id])

    end



end
