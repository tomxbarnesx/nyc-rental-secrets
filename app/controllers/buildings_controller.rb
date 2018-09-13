class BuildingsController < ApplicationController

    def index
    render :layout => "new_layout"
    end

    def show
        $bin = params[:bin1]
        if Comment.where(:building_id => $bin)
            @comments = Comment.where(:building_id => $bin).reverse
    
            puts "HELLO WORLD"
            puts @comments
            puts "HELLO WORLD"

            respond_to do |format|
                format.html # show.html.erb
                format.js # show.js.erb
            end
       
        end

        render :layout=> "application"
      
        
    end

   
end



