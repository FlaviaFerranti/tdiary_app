class TravelsController < ApplicationController
before_action :logged_in_user, only: [:create, :destroy, :show]
before_action :correct_user, only: :destroy

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

    def show
      @travel=Travel.find(params[:id])
    end

    def destroy
    @travel.destroy
    flash[:success] = "Travel deleted"
    redirect_to request.referrer || root_url
    end

    private

    def travel_params
    params.require(:travel).permit(:title, :images, :description)
    end

    def correct_user
        @travel = current_user.travels.find_by(id: params[:id])
        redirect_to root_url if @travel.nil?
    end
end
