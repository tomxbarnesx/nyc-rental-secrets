class UsersController < ApplicationController
    
    def index
        @user = User.all
    end

    def show
        @user = User.find(params[:id]) 
    end

    def new
        @user = User.new
    end

    def edit 
        @user = User.find(params[:id])
       
    end

    def update
        @user = User.find(params[:id])
        
        if @user.update(user_params)
            redirect_to @user
        else
            render 'edit'
        end
    end 

    def create
        @user = User.find(params[:id])
        
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to "/"
    end

    private
        def user_params
            params.require(:user).permit(:username, :first_name, :last_name, :email, :birthdate)
        end
   
end