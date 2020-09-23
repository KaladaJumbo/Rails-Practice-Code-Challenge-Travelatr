class PostsController < ApplicationController
    before_action :define_post, only: [:show, :edit, :update, :like_me]

    def index

    end

    def show

        render "show"

    end

    def new
        @dest_id = params[:id]
        @post = Post.new(destination_id: @dest_id)
        render "new"
    end

    def create

        @post = Post.new(strong_params(:blogger_id, :destination_id, :title, :content))
        if @post.save
            redirect_to post_path(@post)
        else
            render "new"
        end

    end

    def edit

        render "edit"

    end

    def update

        @post.update(strong_params(:blogger_id, :destination_id, :title, :content))
        if @post.save
            redirect_to post_path(@post)
        else
            render "edit"
        end

    end

    def like_me 

        @post.update(likes: @post.likes+=1)
        redirect_to post_path(@post)

    end

    def homepage
    end

    private

    def strong_params(*args)
        params.require(:post).permit(*args)
    end

    def define_post

        @post = Post.find(params[:id])

    end


end
