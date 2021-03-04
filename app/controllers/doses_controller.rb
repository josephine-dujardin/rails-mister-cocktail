class DosesController < ApplicationController
    def index
        @doses = Doses.all
      end
    
      def show
        @dose = Doses.find(params[:id])
      end
    
      def new
        @dose = Doses.new
      end
    
      def create
        @dose = Doses.new(dose_params)
        if @dose.save
          redirect_to dose_path(@dose)
        else
          render "new"
        end
      end
    
      private
    
      def dose_params
        params.require(:dose).permit(:name)
      end
    end
end
