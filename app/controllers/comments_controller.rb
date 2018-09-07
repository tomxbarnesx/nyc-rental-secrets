class CommentsController < ApplicationController

    def new
        @comment = Comment.new
    end


    def create
        @comment = Comment.new(comment_params)

        if @comment.save
           redirect_to '/buildings/show'
       else
           render 'new'
      end

    end



    def comment_params
        params.require(:comment).permit(:user_id, :building_id, :comment_type, :rating, :body)
    end
end
