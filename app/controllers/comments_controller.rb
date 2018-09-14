class CommentsController < ApplicationController
    respond_to :html, :js

    def new
        @comment = Comment.new
    end


    def create
        puts "HELLO WORLD THIS IS THE CREATE"
        
        @comment = Comment.new(comment_params)
        @comment.user_id = current_user.id
        @comments = Comment.where(:building_id => params[:comment][:building_id]).reverse
        puts @comments 
        puts "HELP ME PLS"

        if @comment.save
            render '/buildings/show'
        else
            render 'new'
        end
        
    end

    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
           
    end

    def show
        redirect_to action: 'destroy'
    end


    def comment_params
        params.require(:comment).permit(:user_id, :building_id, :comment_type, :rating, :body)
    end
end
