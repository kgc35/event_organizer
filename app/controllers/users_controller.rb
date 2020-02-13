class UsersController < ApplicationController

    def signup
    end
    
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
        @events_created = @user.events.order(created_at: :desc) #the events that the user created
        @attendances = @user.attendances.order(created_at: :desc) #the record of the user's attendance.  
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        redirect_to user_path(@user)
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)

        redirect_to users_path(@user)
    end

    private
    def user_params
        params.require(:users).permit(:username, :email, :password_digest, :member_status, :admin)
    end

end
