class BuildingsController < ApplicationController
    def index
    render :layout => "new_layout"
    end

    def show
<<<<<<< HEAD
        render :layout=> "application"
    end

=======

        if Comment.find_by building_id: (params[:building_id])

        @comments = Comment.find_by building_id: (params[:building_id])

        else
            @comments = Comment.all
        end

        render :layout=> "application"
        
    end

    

>>>>>>> 1732e40b3e5c64388369a20f2a7a0600f9fb89f8
end



