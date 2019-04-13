class StaticPagesController < ApplicationController
  def home
    if user_signed_in?
        @travel = current_user.travels.build
        @feed_items = current_user.feed.paginate(page: params[:page])
        @higest_voted = Travel.all.sort_by{ |t| [t.cached_votes_up, t.created_at] }.last()
    end
  end

  def help
  end
end
