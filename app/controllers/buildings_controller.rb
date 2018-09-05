class BuildingsController < ApplicationController

    def index
    render :layout => "new_layout"
    end

    def show
        render :layout=> "application"
    end

end
