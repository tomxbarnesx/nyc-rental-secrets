class CommentsController < ApplicationController
    respond_to :html, :js

    def new
        @comment = Comment.new
    end


    def create
        @comment = Comment.new(comment_params)
        if @comment.save
            render '/buildings/show'
        else
            render 'new'
       end
    end

    def show 
        p params[:bin1]
        if Comment.where(:building_id => params[:bin1])
            @comments = Comment.where(:building_id => params[:bin1])
        else
        @comments = Comment.all
        end

        redirect_to "buildings/show"

    end



    def comment_params
        params.require(:comment).permit(:user_id, :building_id, :comment_type, :rating, :body)
    end
end
