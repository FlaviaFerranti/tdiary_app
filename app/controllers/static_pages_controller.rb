class StaticPagesController < ApplicationController
  def home
    if user_signed_in?
        @travel = current_user.travels.build
        @feed_items = current_user.feed.paginate(page: params[:page])
        @higest_voted = Travel.all.order("cached_votes_score").last
    end
  end

  def help
  end
end
