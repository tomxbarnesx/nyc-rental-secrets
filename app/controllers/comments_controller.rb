class CommentsController < ApplicationController

    def new
        @comment = Comment.new
    end


    def create
        @comment = Comment.new(comment_params)
    end



    def comment_params
        params.require(:comment).permit(:user_id, :building_id, :type, :rating, :body)
    end
end
