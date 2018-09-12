class BuildingsController < ApplicationController

    def index
    render :layout => "new_layout"
    end

    def show

        
        p params[:bin1]
        if Comment.where(:building_id => params[:bin1])
            @comments = Comment.where(:building_id => params[:bin1])
            respond_to do |format|
                format.html # show.html.erb
                format.js # show.js.erb
              end
        else
        @comments = Comment.all
        end

        render :layout=> "application"
      
        
    end

   
end



