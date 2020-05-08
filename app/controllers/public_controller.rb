class PublicController < ApplicationController

    def index
        @clubs = Club.all.limit(5)
        @posts = Post.order(id: :desc).limit(20)
    end
    
    def profile
        @profile = User.find_by_username params[:username]
    end
end