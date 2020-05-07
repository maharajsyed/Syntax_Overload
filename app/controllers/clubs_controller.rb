class ClubsController < ApplicationController

    before_action :authenticate_user!, except: [:index, :show]
    before_action :set_club, only: [:show]


    def index
        @clubs = Club.all
    end

    def show
        @posts = @club.posts
    end

    def new
        @club = Club.new
    end
    
    def create
        @club = Club.new club_params
        @club.user_id = current_user.id

        if @club.save
            redirect_to clubs_path
        else
            render :new
        end
    end

    private

    def set_club
        @club = Club.find(params[:id])
    end

    def club_params
        params.require(:club).permit(:name, :url, :regulations)
    end

end
