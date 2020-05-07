class PublicController < ApplicationController

    def index
        @clubs = Club.all.limit(5)
        @posts = Post.order(id: :desc).limit(20)
    end
    
end