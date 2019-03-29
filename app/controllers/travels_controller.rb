class TravelsController < ApplicationController
before_action :authenticate_user!, only: [:create, :destroy, :edit]
before_action :correct_user, only: [:destroy]

    def create
        @travel = current_user.travels.build(travel_params)
        if @travel.save
            flash[:success] = "Travel created!"
            redirect_to root_url
        else
            @feed_items = []
            render 'static_pages/home'
        end
    end

    def edit
        @travel = Travel.find(params[:id])
    end

    def update
        @travel = Travel.find(params[:id])
        if @travel.update_attributes(travel_params)
            flash[:success] = "Travel updated"
            redirect_to (current_user)
        else
            render 'edit'
        end
    end

    def destroy
    @travel.destroy
    flash[:success] = "Travel deleted"
    redirect_to request.referrer || root_url
    end

    private

    def travel_params
    params.require(:travel).permit(:title, :images, :description, :remove_images, {multiples: []}, :location)
    end

    def correct_user
        if current_user.admin?
            @travel =Travel.find(params[:id])
            redirect_to root_url if @travel.nil?
        else
            @travel = current_user.travels.find_by(id: params[:id])
            redirect_to root_url if @travel.nil?
        end
    end

end
