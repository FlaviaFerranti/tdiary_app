class CommentsController < ApplicationController
    before_action :authenticate_user!, only: [:create, :destroy]
    before_action :correct_user, only: [:destroy]
    before_action :find_travel

    def create
        @comment = @travel.comments.create(params[:comment].permit(:content))
        @comment.travel = @travel
        @comment.travel_id = @travel.id
        @comment.user_id = current_user.id
        @comment.save
        if @comment.save
            flash[:success] = "Commented!"
            redirect_to request.referrer || root_url
        else
            render 'new'
        end
    end

    def destroy
        @comment.destroy
        flash[:success] = "Comment deleted"
        redirect_to request.referrer || root_url
    end

    private

    def find_travel
        @travel = Travel.find(params[:travel_id])
    end


    def correct_user
        @travel = Travel.find(params[:travel_id])
        if current_user.admin?
            @comment = @travel.comments.find(params[:id])
            redirect_to root_url if @travel.nil?
        else
            @comment = @travel.comments.find(params[:id])
            redirect_to root_url if @travel.nil?
        end
    end

end
