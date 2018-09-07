class UsersController < ApplicationController
    
    def index
        @user = User.all
    end

    def show
        @user = User.find(params[:id])

    end

    def new
        @user - User.new
    end

    def edit 
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
    end 

    def create
        @user = User.find(params[:id])
    end

   
end
