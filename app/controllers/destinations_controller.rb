class DestinationsController < ApplicationController
    before_action :define_destination, only: [:show, :edit, :update]
    
    def index
        @destinations = Destination.all
    end

    def show

        render "show"

    end

    def new

    end

    def create

    end

    def edit

    end

    def update

    end

    def destroy

    end

    private

    def strong_params(*args)
        params.require(:destination).permit(*args)
    end

    def define_destination

        @destination = Destination.find(params[:id])

    end

end
