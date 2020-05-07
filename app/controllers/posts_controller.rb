class PostsController < ApplicationController

    before_action :authenticate_user!, except: [:index, :show]
    before_action :set_post, only: [:show]


    def index
        @posts = Post.all
    end

    def show
    end

    def new
        @club = Club.find(params[:club_id])
        @post = Post.new
    end
    
    def create
        @post = Post.new post_params
        @post.user_id = current_user.id
        @post.club_id = params[:club_id]

        if @post.save
            redirect_to club_path(@post.club_id)
        else
            @club = Club.find(params[:club_id])
            render :new
        end
    end

    private

    def set_post
        @post = Post.find(params[:id])
    end

    def post_params
        params.require(:post).permit(:title, :body)
    end

end
