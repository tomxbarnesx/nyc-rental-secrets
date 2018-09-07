class BuildingsController < ApplicationController

    def index
    render :layout => "new_layout"
    end

    def show

        if Comment.find_by building_id: (params[:building_id])

        @comments = Comment.find_by building_id: (params[:building_id])

        else
            @comments = Comment.all
        end

        render :layout=> "application"
        
    end

    

end



